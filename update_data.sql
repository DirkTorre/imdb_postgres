-- Connect to the target database
\c imdb

-- =========================
-- 1. TITLE_BASICS
-- =========================

-- Normalize genres into separate table

CREATE TEMP TABLE temp_title_basics (
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

\copy temp_title_basics FROM 'data/title.basics.tsv' DELIMITER E'\t' QUOTE E'\b' NULL '\N' CSV HEADER;
