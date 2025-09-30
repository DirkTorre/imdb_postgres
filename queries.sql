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
SELECT nb.primaryname AS director,
       nb.nconst,
       Avg(tr.averagerating) AS avg_rating,
       Count(tr.averagerating) AS num_movies
FROM   title_directors AS td
       JOIN title_ratings AS tr
         ON tr.tconst = td.tconst
       JOIN title_basics AS tb
         ON tr.tconst = tb.tconst
       JOIN name_basics AS nb
         ON td.nconst = nb.nconst
GROUP  BY td.nconst,
          titletype,
          nb.primaryname,
          nb.nconst
HAVING ( titletype IN ( 'tvMovie', 'movie' ) )
       AND ( Count(tr.averagerating) > 5 )
       AND Avg(tr.numvotes) > 10000
ORDER  BY avg_rating DESC
LIMIT  10;  

-- What are the top 10 movies in each decade?
--
-- needed: title, release date, score
 WITH ranked AS (
    SELECT 
        tb.primarytitle,
        tb.startyear,
        tr.tconst,
        (tb.startyear / 10)::int * 10 AS decade,
        tr.averagerating,
        ROW_NUMBER() OVER (
            PARTITION BY (tb.startyear / 10)::int * 10
            ORDER BY tr.averagerating DESC
        ) AS cat_rank
    FROM 
        title_ratings tr
    INNER JOIN 
        title_basics tb ON tb.tconst = tr.tconst
    WHERE 
        tb.titletype IN ('tvMovie', 'movie')
        AND tr.numvotes > 10000
)
SELECT *
FROM ranked
WHERE cat_rank <= 10
ORDER BY decade, cat_rank;


------------------------------------
-- Actors and collaborations?
------------------------------------
--
-- Which actor pairs have appeared together most often and what is their average movie rating?
-- 1. A query of all actors and movies
WITH actors AS
  (SELECT tp.nconst AS actor1,
          tp2.nconst AS actor2,
          count(DISTINCT tr.tconst) AS title_count,
          avg(tr.averagerating) AS average_rating,
          sum(tr.numvotes) AS total_votes
   FROM title_principals tp
   JOIN title_principals tp2 ON tp.tconst=tp2.tconst
   INNER JOIN title_basics tb ON tp.tconst=tb.tconst
   INNER JOIN title_ratings tr ON tp.tconst=tr.tconst
   WHERE tp.nconst < tp2.nconst
     AND tb.titletype IN ('movie','tvMovie')
     AND tp.category IN ('actor','actress')
     AND tp2.category IN ('actor','actress')
   GROUP BY tp.nconst,
            tp2.nconst
   ORDER BY title_count DESC)
SELECT actor1,
       nb1.primaryname,
       actor2,
       nb2.primaryname,
       title_count,
       average_rating,
       total_votes
FROM actors
JOIN name_basics AS nb1 ON actors.actor1=nb1.nconst
JOIN name_basics AS nb2 ON actors.actor2=nb2.nconst
LIMIT 10;


-- Which actor pairs have appeared together most often and what is their average movie rating?
-- 2. A query with actors who worked together more than 10 times and a total number of votes of 1.000.000
WITH actors AS
  (SELECT tp.nconst AS actor1,
          tp2.nconst AS actor2,
          count(DISTINCT tr.tconst) AS title_count,
          avg(tr.averagerating) AS average_rating,
          sum(tr.numvotes) AS total_votes
   FROM title_principals tp
   JOIN title_principals tp2 ON tp.tconst=tp2.tconst
   INNER JOIN title_basics tb ON tp.tconst=tb.tconst
   INNER JOIN title_ratings tr ON tp.tconst=tr.tconst
   WHERE tp.nconst < tp2.nconst
     AND tb.titletype IN ('movie','tvMovie')
     AND tp.category IN ('actor','actress')
     AND tp2.category IN ('actor','actress')
   GROUP BY tp.nconst,
            tp2.nconst
   ORDER BY title_count DESC)
SELECT actor1,
       nb1.primaryname,
       actor2,
       nb2.primaryname,
       title_count,
       average_rating,
       total_votes
FROM actors
JOIN name_basics AS nb1 ON actors.actor1=nb1.nconst
JOIN name_basics AS nb2 ON actors.actor2=nb2.nconst
WHERE total_votes > 1000000
  AND title_count > 10
ORDER BY average_rating DESC
LIMIT 20;



-- Which actors have the most appearances per genre?
