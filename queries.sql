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
 WITH ranked
     AS (SELECT primarytitle,
                startyear,
                tr.tconst,
                10 * Floor(startyear / 10) AS decade,
                averagerating,
                Row_number()
                  OVER (
                    partition BY 10 * Floor(startyear / 10)
                    ORDER BY averagerating DESC) AS cat_rank
         FROM   title_ratings AS tr
                INNER JOIN title_basics AS tb
                        ON tb.tconst = tr.tconst
         WHERE  titletype IN ( 'tvMovie', 'movie' )
                AND tr.numvotes > 10000)
SELECT *
FROM   ranked
WHERE  cat_rank <= 10
ORDER  BY decade,
          cat_rank;

-- -- copilot suggested doing someting like this, let's have a look at it
-- with movies_with_decade as (
-- 	select
-- 		tconst,
-- 		primarytitle,
-- 		startyear,
-- 		(startyear / 10) * 10 AS decade
-- 	from title_basics
-- 	where startyear is not null
-- ),
-- ranked_movies as (
-- 	select
-- 		tr.tconst,
-- 		decade,
-- 		averagerating,
-- 		ROW_NUMBER() over (
-- 			partition by decade
-- 			ORDER BY averagerating DESC
-- 		) as rank
-- 	from movies_with_decade as mwd
-- 	inner join title_ratings as tr on mwd.tconst=tr.tconst
-- )
-- select *
-- from ranked_movies
-- where rank <=10
-- order by decade, rank;
