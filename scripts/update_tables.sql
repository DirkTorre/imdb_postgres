--------------------------------
-- Loading the title_basics data
--------------------------------

CREATE TEMP TABLE temp_file_title_basics (

    tconst VARCHAR(11) PRIMARY KEY,
    title_type enum_titletype,
    primary_title TEXT,
    original_title TEXT,
    is_adult BOOLEAN,
    start_year SMALLINT,
    end_year SMALLINT,
    runtime_minutes INTEGER,
    genres TEXT
);

\copy temp_file_title_basics FROM 'data/title.basics.tsv' DELIMITER E'\t' QUOTE E'\b' NULL '\N' CSV HEADER;


--------------------
-- Insert and update new genres
--------------------

-- it's faster to recreate this table than it is to search for updates
TRUNCATE genres RESTART IDENTITY;

INSERT INTO genres (tconst, genre)
	SELECT tconst, unnest(string_to_array(genres, ','))::enum_genre as genre
    FROM temp_file_title_basics
    WHERE genres IS NOT NULL;

--------------------
-- Insert and update new title_basics
--------------------

-- Note: this merge will not remove movies, which can be interesting when movies get cancelled

MERGE INTO title_basics tb
using temp_file_title_basics tftb
ON tb.tconst = tftb.tconst
WHEN matched THEN
  UPDATE SET title_type = tftb.title_type,
             primary_title = tftb.primary_title,
             original_title = tftb.original_title,
             is_adult = tftb.is_adult,
             start_year = tftb.start_year,
             end_year = tftb.end_year,
             runtime_minutes = tftb.runtime_minutes
WHEN NOT matched THEN
  INSERT (tconst,
          title_type,
          primary_title,
          original_title,
          is_adult,
          start_year,
          end_year,
          runtime_minutes)
  VALUES (tftb.tconst,
          tftb.title_type,
          tftb.primary_title,
          tftb.original_title,
          tftb.is_adult,
          tftb.start_year,
          tftb.end_year,
          tftb.runtime_minutes);

DROP TABLE temp_file_title_basics;

-------------------------------------------
-- replace title ratings
-------------------------------------------

TRUNCATE title_ratings RESTART IDENTITY;;

\copy title_ratings FROM 'data/title.ratings.tsv' DELIMITER E'\t' QUOTE E'\b' NULL '\N' CSV HEADER;

------------------------
-- update name basics --
------------------------

CREATE TEMP TABLE temp_name_basics (
    nconst VARCHAR(11) PRIMARY KEY,
    primary_name VARCHAR(120),
    birth_year SMALLINT,
    death_year SMALLINT,
    primary_profession TEXT,
    known_for_titles TEXT
);

\copy temp_name_basics FROM 'data/name.basics.tsv' DELIMITER E'\t' QUOTE E'\b' NULL '\N' CSV HEADER;

-- first update name_basics

MERGE INTO name_basics nb
using temp_name_basics tnb
ON nb.nconst = tnb.nconst
WHEN matched THEN
  UPDATE SET primary_name = tnb.primary_name,
             birth_year = tnb.birth_year,
             death_year = tnb.death_year
WHEN NOT matched THEN
  INSERT (nconst,
          primary_name,
          birth_year,
          death_year)
  VALUES (tnb.nconst,
          tnb.primary_name,
          tnb.birth_year,
          tnb.death_year);

-- split profession and add to database

TRUNCATE primary_profession RESTART IDENTITY;;

INSERT INTO primary_profession
SELECT nconst, unnest(string_to_array(primary_profession, ','))
FROM temp_name_basics;

-- split known_for_titles and add to database

TRUNCATE known_for_titles RESTART IDENTITY;;

INSERT INTO known_for_titles
SELECT nconst, unnest(string_to_array(known_for_titles, ',')) as tconst
FROM temp_name_basics;

-- Remove rows that have a tconst that is not in title_basics
DELETE FROM known_for_titles
WHERE tconst IN (
    -- find tconsts that are not in title.basics.
    select tconst from known_for_titles
    except
    select tconst from title_basics
);

--------------------
-- update title_crew
--------------------

CREATE TEMP TABLE temp_title_crew (
    tconst varchar(11),
    directors TEXT,
    writers TEXT
);

\copy temp_title_crew FROM 'data/title.crew.tsv' DELIMITER E'\t' QUOTE E'\b' NULL '\N' CSV HEADER;

-- create a temp table for title_directors, then filter the table
CREATE TEMP TABLE temp_title_directors (
    tconst varchar(11),
    nconst varchar(11),
    UNIQUE (tconst, nconst)
);

-- Load the title_directors data
INSERT INTO temp_title_directors (
    select tconst, unnest(string_to_array(directors,',')) as nconst
    from temp_title_crew
);

DELETE FROM temp_title_directors
WHERE nconst IN (
    select nconst from temp_title_directors
    except
    select nconst from name_basics
);

TRUNCATE title_directors RESTART IDENTITY;;

INSERT INTO title_directors (tconst, nconst)
SELECT tconst, nconst
FROM temp_title_directors;

-- do the same for title_writers

CREATE TEMP TABLE temp_title_writers (
    tconst varchar(11),
    nconst varchar(11),
    UNIQUE (tconst, nconst)
);

-- Load the title_directors data
INSERT INTO temp_title_writers (
    select tconst, unnest(string_to_array(writers,',')) as nconst
    from temp_title_crew
);

DELETE FROM temp_title_writers
WHERE nconst IN (
    select nconst from temp_title_writers
    except
    select nconst from name_basics
);

TRUNCATE title_writers RESTART IDENTITY;;

INSERT INTO title_writers (tconst, nconst)
SELECT tconst, nconst
FROM temp_title_writers;


-- --------------------------
-- -- update title principals
-- --------------------------