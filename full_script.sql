-- delete and create fresh database:
-- su - postgres
-- psql -d 'postgres' -U postgres -c "DROP DATABASE IF EXISTS imdb;"
-- psql -d 'postgres' -U postgres -c "CREATE DATABASE imdb;"
-- exit


\c imdb

-- BEGIN LOAD AND MODIFY TITLE_BASICS

CREATE TYPE enum_titletype AS ENUM ('movie','short','titleType','tvEpisode','tvMiniSeries','tvMovie','tvPilot','tvSeries','tvShort','tvSpecial','video','videoGame');

CREATE TABLE title_basics (
    tconst varchar(11), -- max length is 10, do 11 just in case,
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

create temp table tconst_to_remove (
    tconst text
);

insert into tconst_to_remove (
    select tconst
    from title_basics
    where isadult=true
    or titletype not in ('movie','tvMovie')
);

-- do this at a later point with a cascade, or not do it at all
-- DELETE FROM title_basics USING tconst_to_remove
--   WHERE title_basics.tconst = tconst_to_remove.tconst;

create table genres (
    tconst varchar(11),
    genre varchar(11)
);

insert into genres (
    select tconst,unnest(string_to_array(genres,',')) as genre
    from title_basics
    where genres is not null
);

ALTER TABLE title_basics DROP COLUMN genres;
ALTER TABLE title_basics DROP COLUMN isAdult;
ALTER TABLE title_basics DROP COLUMN endYear;

ALTER TABLE title_basics ADD CONSTRAINT title_basics_pk PRIMARY KEY (tconst);
ALTER TABLE genres ADD CONSTRAINT title_basics_pk FOREIGN KEY (tconst) REFERENCES title_basics(tconst);

/*
don't know how to cast to enum afterwards:

CREATE TYPE enum_titletype AS ENUM ('Action', 'Adventure', 'Animation','Biography', 'Comedy', 'Crime', 'Documentary', 'Drama', 'Family', 'Fantasy', 'Film-Noir', 'Game-Show',  'History', 'Horror', 'Music', 'Musical', 'Mystery', 'News', 'Reality-TV', 'Romance','Sci-Fi', 'Short', 'Sport', 'Talk-Show', 'Thriller', 'War', 'Western');*/

-- END LOAD AND MODIFY TITLE_BASICS

-- BEGIN LOAD AND MODIFY TITLE_RATINGS

CREATE TABLE title_ratings (
    tconst varchar(11), -- max length is 10, do 11 just in case
    averageRating numeric(3,1),
    numVotes INT
);

\copy title_ratings FROM 'data/title.ratings.tsv' DELIMITER E'\t' QUOTE E'\b' NULL '\N' CSV HEADER;

-- problem!!!!!!!: sometimes a movie tconst is in title_ratings, but not (yet) in title_ratings
-- solution remove entry from title_ratings that are not in title_basics
DELETE FROM title_ratings
WHERE tconst IN (
    select tconst from title_ratings
    except
    select tconst from title_basics
);

ALTER TABLE title_ratings ADD CONSTRAINT title_ratings_fk FOREIGN KEY (tconst) REFERENCES title_basics(tconst);

-- END LOAD AND MODIFY TITLE_RATINGS

-- BEGIN LOAD AND MODIFY NAME_BASICS

CREATE TABLE name_basics (
    nconst varchar(11), -- max length is 10, do 11 just in case,
    primaryName varchar(120), -- no name longer than 105, do 120 just in case
    birthYear SMALLINT,
    deathYear SMALLINT,
    primaryProfession TEXT, -- will be dropped after transform
    knownForTitles TEXT -- will be dropped after transform
);

\copy name_basics FROM 'data/name.basics.tsv' DELIMITER E'\t' QUOTE E'\b' NULL '\N' CSV HEADER;

CREATE TABLE primary_profession (
    nconst varchar(11),
    primaryProfession varchar(26)
);

CREATE TABLE known_for_titles (
    nconst varchar(11),
    tconst varchar(11) -- max length is 10, do 11 just in case,
);


-- this should be casted to enum afterwards, how?
insert into primary_profession (
    select nconst, unnest(string_to_array(primaryProfession,',')) as primaryProfession
    from name_basics
);

insert into known_for_titles (
    select nconst, unnest(string_to_array(knownForTitles,',')) as tconst
    from name_basics
);

ALTER TABLE name_basics DROP COLUMN primaryProfession;
ALTER TABLE name_basics DROP COLUMN knownForTitles;


-- problem!!!!!!!: sometimes a movie tconst is in known_for_titles, but not (yet) in title_basics
-- solution remove tconst from known_for_titles that are not in title_basics
DELETE FROM known_for_titles
WHERE tconst IN (
    select tconst from known_for_titles
    except
    select tconst from title_basics
);

ALTER TABLE name_basics ADD CONSTRAINT name_basics_pk PRIMARY KEY (nconst);
ALTER TABLE primary_profession ADD CONSTRAINT primary_profession_fk FOREIGN KEY (nconst) REFERENCES name_basics(nconst);
ALTER TABLE known_for_titles ADD CONSTRAINT known_for_titles_fk_nconst FOREIGN KEY (nconst) REFERENCES name_basics(nconst);
ALTER TABLE known_for_titles ADD CONSTRAINT known_for_titles_fk_tconst FOREIGN KEY (tconst) REFERENCES title_basics(tconst);




-- END LOAD AND MODIFY NAME_BASICS


