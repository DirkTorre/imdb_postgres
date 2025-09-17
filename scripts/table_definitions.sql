\c imdb

CREATE TYPE titleType AS ENUM ('movie','short','titleType','tvEpisode','tvMiniSeries','tvMovie','tvPilot','tvSeries','tvShort','tvSpecial','video','videoGame');

CREATE TABLE title_basics (
    tconst varchar(11), -- max length is 10, do 11 just in case
    titleType titleType, -- converted to category
    primaryTitle TEXT,
    originalTitle TEXT,
    isAdult BOOLEAN,
    startYear SMALLINT,
    endYear SMALLINT,
    runtimeMinutes INTEGER,
    genres TEXT -- will be converted to array of strings
);

CREATE TABLE title_ratings (
    tconst varchar(11), -- max length is 10, do 11 just in case
    averageRating numeric(3,1),
    numVotes INT
);

CREATE TABLE name_basics (
    nconst varchar(11), -- max length is 10, do 11 just in case
    primaryName TEXT,
    birthYear SMALLINT,
    deathYear SMALLINT,
    primaryProfession TEXT, -- will be converted to array of strings
    knownForTitles TEXT -- will be converted to array of strings
);

CREATE TABLE title_crew (
    tconst varchar(11), -- max length is 10, do 11 just in case
    directors TEXT, -- will be converted to array of strings
    writers TEXT -- will be converted to array of strings
);

CREATE TABLE title_principals (
    tconst varchar(11), -- max length is 10, do 11 just in case
    ordering SMALLINT,
    nconst varchar(11), -- max length is 10, do 11 just in case
    category varchar(19),
    job TEXT,
    characters TEXT -- convert to list
);
