-- Connect to the target database
\c imdb

-- =========================
-- 1. TITLE_BASICS
-- =========================
CREATE TYPE enum_titletype AS ENUM (
    'movie','short','titleType','tvEpisode','tvMiniSeries',
    'tvMovie','tvPilot','tvSeries','tvShort','tvSpecial',
    'video','videoGame'
);

CREATE TABLE title_basics (
    tconst VARCHAR(11) PRIMARY KEY,
    titleType enum_titletype,
    primaryTitle TEXT,
    originalTitle TEXT,
    isAdult BOOLEAN,
    startYear SMALLINT,
    endYear SMALLINT,
    runtimeMinutes INTEGER,
    genres TEXT
);

\copy title_basics FROM 'data/title.basics.tsv' DELIMITER E'\t' QUOTE E'\b' NULL '\N' CSV HEADER;

-- Normalize genres into separate table
CREATE TABLE genres (
    tconst VARCHAR(11) REFERENCES title_basics(tconst) ON DELETE CASCADE,
    genre VARCHAR(20)
);

INSERT INTO genres (tconst, genre)
SELECT tconst, unnest(string_to_array(genres, ','))
FROM title_basics
WHERE genres IS NOT NULL;

ALTER TABLE title_basics DROP COLUMN genres;

-- Add index to speed up queries (but it slows updating the table).
CREATE INDEX idx_title_basics_tconst ON title_basics(tconst);
CREATE INDEX idx_title_principals_category ON title_principals(category);

-- =========================
-- 2. TITLE_RATINGS
-- =========================
CREATE TABLE title_ratings (
    tconst VARCHAR(11),
    averageRating NUMERIC(3,1),
    numVotes INT
);

\copy title_ratings FROM 'data/title.ratings.tsv' DELIMITER E'\t' QUOTE E'\b' NULL '\N' CSV HEADER;

-- Remove orphan ratings to comply wit foreign key constraint
-- this method is a lot faster than using two select statements and a except
DELETE FROM title_ratings r
WHERE NOT EXISTS (
    SELECT 1 FROM title_basics b WHERE b.tconst = r.tconst
);


-- Add a primary key, that is also a foreign key.
-- Statements must be on seperate lines.
ALTER TABLE title_ratings
    ADD CONSTRAINT title_ratings_pk PRIMARY KEY (tconst),
    ADD CONSTRAINT title_ratings_fk FOREIGN KEY (tconst)
        REFERENCES title_basics(tconst) ON DELETE CASCADE;


-- =========================
-- 3. NAME_BASICS
-- =========================
CREATE TABLE name_basics (
    nconst VARCHAR(11) PRIMARY KEY,
    primaryName VARCHAR(120),
    birthYear SMALLINT,
    deathYear SMALLINT,
    primaryProfession TEXT,
    knownForTitles TEXT
);

\copy name_basics FROM 'data/name.basics.tsv' DELIMITER E'\t' QUOTE E'\b' NULL '\N' CSV HEADER;

-- Split professions
CREATE TABLE primary_profession (
    nconst VARCHAR(11) REFERENCES name_basics(nconst) ON DELETE CASCADE,
    primaryProfession VARCHAR(26)
);

INSERT INTO primary_profession
SELECT nconst, unnest(string_to_array(primaryProfession, ','))
FROM name_basics;

-- Split known-for titles
CREATE TABLE known_for_titles (
    nconst VARCHAR(11),
    tconst VARCHAR(11)
);

-- Load the known_for_titles data
INSERT INTO known_for_titles
SELECT nconst, unnest(string_to_array(knownForTitles, ',')) as tconst
FROM name_basics;

-- Remove rows that have a tconst that is not in title_basics
DELETE FROM known_for_titles
WHERE tconst IN (
    -- find tconsts that are not in title.basics.
    select tconst from known_for_titles
    except
    select tconst from title_basics
);

-- Add constraints to known_for_titles
ALTER TABLE known_for_titles
ADD CONSTRAINT known_for_titles_fk FOREIGN KEY (tconst)
REFERENCES title_basics(tconst) ON DELETE CASCADE;

-- Remove old columns
ALTER TABLE name_basics
    DROP COLUMN primaryProfession,
    DROP COLUMN knownForTitles;

-- Index for fast lookup of names
CREATE INDEX idx_name_basics_nconst ON name_basics(nconst);

-- =========================
-- 4. TITLE_CREW
-- =========================
CREATE TEMP TABLE title_crew (
    tconst varchar(11),
    directors TEXT,
    writers TEXT
);

\copy title_crew FROM 'data/title.crew.tsv' DELIMITER E'\t' QUOTE E'\b' NULL '\N' CSV HEADER;

-- Split directors
CREATE TABLE title_directors (
    tconst varchar(11),
    nconst varchar(11),
    UNIQUE (tconst, nconst)
);

-- Load the title_directors data
INSERT INTO title_directors (
    select tconst, unnest(string_to_array(directors,',')) as nconst
    from title_crew
);

-- Remove rows that have a nconst that is not in name_basics
-- Note that this method is a lot faster than: DELETE FROM title_directors WHERE nconst NOT IN (SELECT nconst FROM name_basics);
DELETE FROM title_directors
WHERE nconst IN (
    select nconst from title_directors
    except
    select nconst from name_basics
);

-- Add constraints to title_directors
ALTER TABLE title_directors
    ADD CONSTRAINT title_directors_fk_tconst FOREIGN KEY (tconst) REFERENCES title_basics(tconst),
    ADD CONSTRAINT title_directors_fk_nconst FOREIGN KEY (nconst) REFERENCES name_basics(nconst);


-- Split writers
CREATE TABLE title_writers (
    tconst varchar(11),
    nconst varchar(11),
    UNIQUE (tconst, nconst)
);

-- Load the title_writers data
INSERT INTO title_writers (
    select tconst, unnest(string_to_array(writers,',')) as writers
    from title_crew
);

-- Remove rows that have a nconst that is not in name_basics
DELETE FROM title_writers
WHERE nconst IN (
    select nconst from title_writers
    except
    select nconst from name_basics
);

-- Add constraints to title_writers
ALTER TABLE title_writers
    ADD CONSTRAINT title_writers_fk_tconst FOREIGN KEY (tconst) REFERENCES title_basics(tconst),
    ADD CONSTRAINT title_writers_fk_nconst FOREIGN KEY (nconst) REFERENCES name_basics(nconst);

DROP TABLE title_crew;


-- =========================
-- 5. TITLE_PRINCIPALS
-- =========================
CREATE TYPE enum_job_category AS ENUM (
    'actor','actress','archive_footage','archive_sound',
    'casting_director','category','cinematographer','composer',
    'director','editor','producer','production_designer','self','writer'
);

CREATE TABLE title_principals (
    tconst varchar(11),
    ordering SMALLINT,
    nconst varchar(11),
    category enum_job_category,
    job TEXT,
    characters TEXT,
    PRIMARY KEY (tconst, ordering)
);

\copy title_principals FROM 'data/title.principals.tsv' DELIMITER E'\t' QUOTE E'\b' NULL '\N' CSV HEADER;

update title_principals
set characters = string_to_array(
    translate(
        replace(characters,' "," ','@'),
        '[]"\', ''),
    '@')::text[];

-- Remove rows that have a nconst that is not in name_basics
DELETE FROM title_principals
WHERE nconst IN (
    select nconst from title_principals
    except
    select nconst from name_basics
);

-- Add constraints to title_principals
ALTER TABLE title_principals
    ADD CONSTRAINT title_principals_fk_tconst FOREIGN KEY (tconst) REFERENCES title_basics(tconst),
    ADD CONSTRAINT title_principals_fk_nconst FOREIGN KEY (nconst) REFERENCES name_basics(nconst);

-- Composite index for fast joins and filters on title_principals
CREATE INDEX idx_title_principals_tconst_nconst ON title_principals(tconst, nconst);
