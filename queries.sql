-- https://www.dpriver.com/pp/sqlformat.htm


-- ---------------------------
-- Movies and Ratings
-- ---------------------------
-- 
-- Which top 10 directors have the highest average imdb rating, considering only directors with at least 5 movies?
-- 
-- needed:
--     - title_directors + title_ratings
--     - group on director
--         + average rating
--         + amount of movies
--     - more than 5 movies per director
-- Note: A lot of smaller directors have 1 movie that is popular somewhere.
--       To filter them out I take an average number of movies of 10.000 per director.
SELECT nb.primary_name         AS director,
       nb.nconst,
       Avg(tr.average_rating)   AS avg_rating,
       Count(tr.average_rating) AS num_movies
FROM   title_directors AS td
       JOIN title_ratings AS tr
         ON tr.tconst = td.tconst
       JOIN title_basics AS tb
         ON tr.tconst = tb.tconst
       JOIN name_basics AS nb
         ON td.nconst = nb.nconst
WHERE  tb.is_adult = false
GROUP  BY td.nconst,
          tb.title_type,
          nb.primary_name,
          nb.nconst
HAVING tb.title_type IN ( 'tvMovie', 'movie' )
       AND Count(tr.average_rating) > 5
       AND Avg(tr.num_votes) > 10000
ORDER  BY avg_rating DESC
LIMIT  10; 



-- What are the top 10 movies in each decade?
--
-- needed: title, release date, score, gives a 
-- different result every time it is executed because of movies with the same score
WITH ranked
     AS (SELECT tb.primary_title,
                tb.start_year,
                tr.tconst,
                ( tb.start_year / 10 ) :: INT * 10    AS decade,
                tr.average_rating,
                Row_number()
                  over (
                    PARTITION BY (tb.start_year / 10)::INT * 10
                    ORDER BY tr.average_rating DESC ) AS cat_rank
         FROM   title_ratings tr
                inner join title_basics tb
                        ON tb.tconst = tr.tconst
         WHERE  tb.title_type IN ( 'tvMovie', 'movie' )
                AND tr.num_votes > 10000
                AND tb.is_adult = false)
SELECT *
FROM   ranked
WHERE  cat_rank <= 10
ORDER  BY decade,
          cat_rank; 



------------------------------------
-- Actors and collaborations?
------------------------------------
--
-- Which actor pairs have appeared together most often and what is their average movie rating?
-- 1. A query of all actors and movies
WITH actors
AS
  (
             SELECT     tp.nconst                 AS actor1,
                        tp2.nconst                AS actor2,
                        count(DISTINCT tr.tconst) AS title_count,
                        avg(tr.average_rating)     AS average_rating,
                        sum(tr.num_votes)          AS total_votes
             FROM       title_principals tp
             JOIN       title_principals tp2
              ON         tp.tconst=tp2.tconst
             INNER JOIN title_basics tb
              ON         tp.tconst=tb.tconst
             INNER JOIN title_ratings tr
              ON         tp.tconst=tr.tconst
             WHERE      tp.nconst < tp2.nconst
              AND        tb.title_type IN ('movie','tvMovie')
              AND        tp.category IN ('actor','actress')
              AND        tp2.category IN ('actor','actress')
             GROUP BY   tp.nconst,
                        tp2.nconst
             ORDER BY   title_count DESC)
  SELECT actor1,
         nb1.primary_name,
         actor2,
         nb2.primary_name,
         title_count,
         average_rating,
         total_votes
  FROM   actors
  JOIN   name_basics AS nb1
    ON   actors.actor1=nb1.nconst
  JOIN   name_basics AS nb2
    ON   actors.actor2=nb2.nconst
  LIMIT  10;



-- Which actor pairs have appeared together most often and what is their average movie rating?
-- 2. A query with actors who worked together more than 10 times and a total number of votes of 1.000.000
WITH actors
AS
(
    SELECT     tp.nconst                AS actor1,
              tp2.nconst                AS actor2,
              count(DISTINCT tr.tconst) AS title_count,
              avg(tr.average_rating)     AS average_rating,
              sum(tr.num_votes)          AS total_votes
    FROM       title_principals tp
    JOIN       title_principals tp2
      ON         tp.tconst=tp2.tconst
    INNER JOIN title_basics tb
      ON         tp.tconst=tb.tconst
    INNER JOIN title_ratings tr
      ON         tp.tconst=tr.tconst
    WHERE      tp.nconst < tp2.nconst
      AND        tb.title_type IN ('movie','tvMovie')
      AND        tp.category IN ('actor','actress')
      AND        tp2.category IN ('actor','actress')
    GROUP BY   tp.nconst,
              tp2.nconst
    ORDER BY   title_count DESC)
SELECT   actor1,
          nb1.primary_name,
          actor2,
          nb2.primary_name,
          title_count,
          average_rating,
          total_votes
FROM     actors
JOIN     name_basics AS nb1
  ON       actors.actor1=nb1.nconst
JOIN     name_basics AS nb2
  ON       actors.actor2=nb2.nconst
WHERE    total_votes > 1000000
  AND      title_count > 10
ORDER BY average_rating DESC
LIMIT    20;


-- Which actors have the most appearances per genre?
-- 1. all movies
WITH base_data
     AS (SELECT tb.tconst,
                tp.nconst,
                genre
         FROM   title_basics AS tb
                JOIN title_ratings AS tr
                  ON tr.tconst = tb.tconst
                JOIN title_principals AS tp
                  ON tp.tconst = tb.tconst
                JOIN genres AS g
                  ON g.tconst = tb.tconst
         WHERE  title_type IN ( 'movie', 'tvMovie' )
                AND category IN ( 'actor', 'actress' )
                AND is_adult = false),
     grouped
     AS (SELECT genre,
                nconst,
                Count(tconst) AS tconst_count
         FROM   base_data
         GROUP  BY genre,
                   nconst),
     ranked
     AS (SELECT genre,
                nconst,
                tconst_count,
                Row_number()
                  OVER (
                    partition BY genre
                    ORDER BY tconst_count DESC) AS top_rank
         FROM   grouped)
SELECT ranked.genre,
       tconst_count AS "# of movies",
       ranked.nconst,
       primary_name
FROM   ranked
       LEFT JOIN name_basics AS nb
              ON nb.nconst = ranked.nconst
WHERE  ( top_rank <= 5 )
       AND ( ranked.genre IS NOT NULL )
ORDER  BY ranked.genre,
          top_rank ASC; 


-- 2. movies with more than 10.000 votes
WITH base_data
     AS (SELECT tb.tconst,
                tp.nconst,
                genre
         FROM   title_basics AS tb
                JOIN title_ratings AS tr
                  ON tr.tconst = tb.tconst
                JOIN title_principals AS tp
                  ON tp.tconst = tb.tconst
                JOIN genres AS g
                  ON g.tconst = tb.tconst
         WHERE  title_type IN ( 'movie', 'tvMovie' )
                AND category IN ( 'actor', 'actress' )
                AND is_adult = false
                AND tr.num_votes > 10000),
     grouped
     AS (SELECT genre,
                nconst,
                Count(tconst) AS tconst_count
         FROM   base_data
         GROUP  BY genre,
                   nconst),
     ranked
     AS (SELECT genre,
                nconst,
                tconst_count,
                Row_number()
                  OVER (
                    partition BY genre
                    ORDER BY tconst_count DESC) AS top_rank
         FROM   grouped)
SELECT ranked.genre,
       tconst_count AS "# of movies",
       ranked.nconst,
       primary_name
FROM   ranked
       LEFT JOIN name_basics AS nb
              ON nb.nconst = ranked.nconst
WHERE  ( top_rank <= 5 )
       AND ( ranked.genre IS NOT NULL )
ORDER  BY ranked.genre,
          top_rank ASC; 


-- Which actors have the longest career span between their first and last movie?
SELECT primary_name,
       tp.nconst,
       Max(start_year) - Min(start_year) AS careerspan,
       Min(start_year)                  AS from,
       Max(start_year)                  AS till,
       birth_year,
       death_year
FROM   title_basics AS tb
       LEFT JOIN title_principals AS tp
              ON tb.tconst = tp.tconst
       LEFT JOIN name_basics AS nb
              ON nb.nconst = tp.nconst
WHERE  category IN ( 'actor', 'actress' )
       AND title_type IN ( 'movie', 'tvMovie' )
       AND start_year IS NOT NULL
       AND is_adult = false
       AND start_year <= death_year
       AND start_year >= birth_year
GROUP  BY tp.nconst,
          primary_name,
          birth_year,
          death_year
ORDER  BY careerspan DESC
LIMIT  10; 

---------------------
-- Trends & Analytics
---------------------

-- How has the average runtime of movies changed over the decades?  
WITH average_decades
     AS (SELECT ( start_year / 10 ) :: INT * 10 AS decade,
                Avg(runtime_minutes) :: INT     AS average_minutes
         FROM   title_basics
         WHERE  title_type IN ( 'tvMovie', 'movie' )
                AND runtime_minutes IS NOT NULL
                AND start_year IS NOT NULL
         GROUP  BY decade)
SELECT decade,
       average_minutes,
       average_minutes - Lag(average_minutes, 1)
                           over(
                             ORDER BY decade) AS
       "difference with previous decade"
FROM   average_decades; 


-- Which genres have seen the biggest growth in the last 20 years?
WITH base_data
     AS (SELECT genre,
                start_year,
                Sum(num_votes) AS sum_votes
         FROM   title_basics AS tb
                LEFT JOIN genres
                       ON genres.tconst = tb.tconst
                LEFT JOIN title_ratings AS tr
                       ON tr.tconst = tb.tconst
         WHERE  start_year IN ( Date_part('year', CURRENT_DATE) - 1,
                                Date_part('year', CURRENT_DATE) - 21
                              )
                AND num_votes IS NOT NULL
         GROUP  BY start_year,
                   genre
         ORDER  BY genre)
SELECT genre,
       ( Max(sum_votes) - Min(sum_votes) )                        AS total_increase,
       ( Max(sum_votes) - Min(sum_votes) ) * 100 / Min(sum_votes) AS percentage_increase
FROM   base_data
GROUP  BY genre
ORDER  BY total_increase DESC;

----------------------
-- Awards & Popularity
----------------------

-- Which directors or actors have the highest average number of votes per title_rating bracket (5 brackets)?
WITH rating_brackets AS
(
	SELECT tp.nconst,
	average_rating,
	num_votes,
	CEIL(tr.average_rating / 2) AS rating_bracket
	FROM   title_principals AS tp
	JOIN   title_ratings    AS tr
	ON     tr.tconst=tp.tconst
	JOIN   title_basics    AS tb
	ON     tb.tconst=tr.tconst
	WHERE  category IN ('actor', 'actress', 'director') and title_type IN ( 'tvMovie', 'movie' ) AND is_adult = false
), avg_votes_per_rank AS (
         SELECT   rating_bracket,
                  nconst,
                  Avg(num_votes) AS avg_num_votes
         FROM     rating_brackets
         GROUP BY rating_bracket,
                  nconst
), ranked AS (
         SELECT   rating_bracket,
                  nconst,
                  avg_num_votes,
                  row_number() OVER w         AS top_rank
         FROM     avg_votes_per_rank window w AS (partition BY rating_bracket ORDER BY avg_num_votes DESC)
)
SELECT    rating_bracket,
          avg_num_votes::int,
          ranked.nconst,
          name_basics.primary_name
FROM      ranked
LEFT JOIN name_basics
ON        ranked.nconst=name_basics.nconst
WHERE     top_rank < 20
ORDER BY  rating_bracket DESC,
          avg_num_votes DESC;

-- Which directors or actors have the highest total number of votes per title_rating bracket (3 brackets)?
WITH rating_brackets AS
(
	SELECT tp.nconst,
	average_rating,
	num_votes,
	CEIL(tr.average_rating / 4) AS rating_bracket
	FROM   title_principals AS tp
	JOIN   title_ratings    AS tr
	ON     tr.tconst=tp.tconst
	JOIN   title_basics    AS tb
	ON     tb.tconst=tr.tconst
	WHERE  category IN ('actor', 'actress', 'director') and title_type IN ( 'tvMovie', 'movie' ) AND is_adult = false
), avg_votes_per_rank AS (
         SELECT   rating_bracket,
                  nconst,
                  sum(num_votes) AS avg_num_votes
         FROM     rating_brackets
         GROUP BY rating_bracket,
                  nconst
), ranked AS (
         SELECT   rating_bracket,
                  nconst,
                  avg_num_votes,
                  row_number() OVER w         AS top_rank
         FROM     avg_votes_per_rank window w AS (partition BY rating_bracket ORDER BY avg_num_votes DESC)
)
SELECT    rating_bracket,
          avg_num_votes::int,
          ranked.nconst,
          name_basics.primary_name
FROM      ranked
LEFT JOIN name_basics
ON        ranked.nconst=name_basics.nconst
WHERE     top_rank < 20
ORDER BY  rating_bracket DESC,
          avg_num_votes DESC;


-- What are the most common genres among movies with a score in the upper quantile (high rated movies)?
SELECT genre,
       Count(genre)
FROM   title_ratings AS tr
       join title_basics AS tb
         ON tb.tconst = tr.tconst
       join genres
         ON genres.tconst = tr.tconst
WHERE  num_votes > 10000
       AND is_adult = FALSE
       AND title_type IN ( 'movie', 'tvMovie' )
       AND average_rating >= (SELECT Percentile_cont(0.75)
                                       within GROUP (ORDER BY average_rating)
                              FROM   title_ratings)
GROUP  BY genre
ORDER  BY Count(genre) DESC;

-----------------------------
-- Complex Joins & Subqueries
-----------------------------

-- Find the most common “collaboration triangles”: actor A, actor B, and director C who worked together on multiple films.


