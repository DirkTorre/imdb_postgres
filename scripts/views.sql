-- all movies with actors
CREATE VIEW v_movies_ratings AS
SELECT tb.tconst,
       tb.primary_title,
       tb.start_year,
       tb.runtime_minutes,
       tr.average_rating,
       tr.num_votes
FROM   title_basics tb
LEFT JOIN   title_ratings tr ON tb.tconst = tr.tconst
WHERE  tb.title_type IN ('movie','tvMovie')
  AND  tb.is_adult = false;

-- all movies with actors and ratings
CREATE VIEW v_movies_actors_ratings AS
SELECT vmr.tconst,
       vmr.start_year,
       tp.nconst,
       nb.primary_name AS actor,
       nb.birth_year,
       nb.death_year,
       tp.category,
       vmr.average_rating,
       vmr.num_votes
FROM   v_movies_ratings vmr
LEFT JOIN   title_principals tp ON vmr.tconst = tp.tconst
LEFT JOIN   name_basics nb ON tp.nconst = nb.nconst
WHERE  tp.category IN ('actor','actress');

-- all movies with actors, ratings and genres
CREATE VIEW v_movies_actors_ratings_genres AS
SELECT vmar.tconst,
       vmar.start_year,
       vmar.nconst,
       vmar.actor,
       vmar.birth_year,
       vmar.death_year,
       vmar.category,
       vmar.average_rating,
       vmar.num_votes,
       genres.genre
FROM   v_movies_actors_ratings vmar
LEFT JOIN   genres ON vmar.tconst = genres.tconst;