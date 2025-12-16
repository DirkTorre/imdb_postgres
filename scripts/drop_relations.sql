ALTER TABLE IF EXISTS genres
    DROP CONSTRAINT IF EXISTS genres_tconst_fkey;

ALTER TABLE IF EXISTS known_for_titles
    DROP CONSTRAINT IF EXISTS known_for_titles_fk;

ALTER TABLE IF EXISTS primary_profession
    DROP CONSTRAINT IF EXISTS primary_profession_nconst_fkey;

ALTER TABLE IF EXISTS title_directors
    DROP CONSTRAINT IF EXISTS title_directors_fk_nconst;

ALTER TABLE IF EXISTS title_directors
    DROP CONSTRAINT IF EXISTS title_directors_fk_tconst;

ALTER TABLE IF EXISTS title_principals
    DROP CONSTRAINT IF EXISTS title_principals_fk_nconst;

ALTER TABLE IF EXISTS title_principals
    DROP CONSTRAINT IF EXISTS title_principals_fk_tconst;

ALTER TABLE IF EXISTS title_ratings
    DROP CONSTRAINT IF EXISTS title_ratings_fk;

ALTER TABLE IF EXISTS title_writers
    DROP CONSTRAINT IF EXISTS title_writers_fk_nconst;

ALTER TABLE IF EXISTS title_writers
    DROP CONSTRAINT IF EXISTS title_writers_fk_tconst;



DROP INDEX IF EXISTS title_ratings_index;

DROP INDEX IF EXISTS title_basics_index;

DROP INDEX IF EXISTS name_basics_index;

DROP INDEX IF EXISTS title_principals_index;