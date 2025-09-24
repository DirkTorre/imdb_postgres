# Project to create and update an IMdB database

get instiration from https://www.dbwiki.co.uk/postgresqlimdb

The main script is full_script.sql. The scripts folder could possibly be removed in the future.

## first download the data with the python script (fast)

Install the dependencies (with uv) and run main.py (`uv run main.py`)

## commands to execute

```bash
su - postgres
psql -d 'postgres' -U postgres -c "DROP DATABASE IF EXISTS imdb;"
psql -d 'postgres' -U postgres -c "CREATE DATABASE imdb;"
exit
psql -h localhost -d imdb -U postgres -p 5432 -a -f full_script.sql
```


## notes

One downside of creating index after importing is that table must be locked, and that may take long time (it will not be locked in opposite scenario).

creating the database now takes 20 minutes (with the indices added)

## todo:

todo:

- create indices
- create update script
- redesign initial loading of data so that everything works imidiatly.
- clean and document the code

done:

- transform and load the data
- transform data to usefull SQL database structure
- look at copilot improvements

## copilot improvements

Got it — your script already works, but it can be made **more concise, consistent, and maintainable** without changing its logic.
Here’s a refactored version with improvements in **style, structure, and safety** while keeping the same functionality.

---

## **Key Improvements**
1. **Consistent naming** for constraints and indexes.
2. **Use `ON DELETE CASCADE`** where foreign keys should automatically clean up dependent rows.
3. **Avoid repeated `DELETE ... EXCEPT` patterns** by using `INNER JOIN` or `NOT EXISTS` for better performance.
4. **Group related operations** together for readability.
5. **Add comments** explaining *why* something is done, not just *what*.
6. **Use `TEXT[]` directly** for `characters` instead of casting after the fact.
7. **Remove unused temp tables** unless they’re needed later.

---

## **Improved Script (Excerpt)**

```sql
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

\copy title_basics FROM 'data/title.basics.tsv' DELIMITER E'\t' NULL '\N' CSV HEADER;

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

-- =========================
-- 2. TITLE_RATINGS
-- =========================
CREATE TABLE title_ratings (
    tconst VARCHAR(11) PRIMARY KEY REFERENCES title_basics(tconst) ON DELETE CASCADE,
    averageRating NUMERIC(3,1),
    numVotes INT
);

\copy title_ratings FROM 'data/title.ratings.tsv' DELIMITER E'\t' NULL '\N' CSV HEADER;

-- Remove orphan ratings
DELETE FROM title_ratings r
WHERE NOT EXISTS (
    SELECT 1 FROM title_basics b WHERE b.tconst = r.tconst
);

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

\copy name_basics FROM 'data/name.basics.tsv' DELIMITER E'\t' NULL '\N' CSV HEADER;

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
    nconst VARCHAR(11) REFERENCES name_basics(nconst) ON DELETE CASCADE,
    tconst VARCHAR(11) REFERENCES title_basics(tconst) ON DELETE CASCADE
);

INSERT INTO known_for_titles
SELECT nconst, unnest(string_to_array(knownForTitles, ','))
FROM name_basics;

ALTER TABLE name_basics
    DROP COLUMN primaryProfession,
    DROP COLUMN knownForTitles;

-- =========================
-- 4. TITLE_CREW
-- =========================
CREATE TEMP TABLE title_crew (
    tconst VARCHAR(11),
    directors TEXT,
    writers TEXT
);

\copy title_crew FROM 'data/title.crew.tsv' DELIMITER E'\t' NULL '\N' CSV HEADER;

CREATE TABLE title_directors (
    tconst VARCHAR(11) REFERENCES title_basics(tconst) ON DELETE CASCADE,
    nconst VARCHAR(11) REFERENCES name_basics(nconst) ON DELETE CASCADE,
    UNIQUE (tconst, nconst)
);

INSERT INTO title_directors
SELECT tconst, unnest(string_to_array(directors, ','))
FROM title_crew
WHERE directors IS NOT NULL;

CREATE TABLE title_writers (
    tconst VARCHAR(11) REFERENCES title_basics(tconst) ON DELETE CASCADE,
    nconst VARCHAR(11) REFERENCES name_basics(nconst) ON DELETE CASCADE,
    UNIQUE (tconst, nconst)
);

INSERT INTO title_writers
SELECT tconst, unnest(string_to_array(writers, ','))
FROM title_crew
WHERE writers IS NOT NULL;

-- =========================
-- 5. TITLE_PRINCIPALS
-- =========================
CREATE TYPE enum_job_category AS ENUM (
    'actor','actress','archive_footage','archive_sound',
    'casting_director','category','cinematographer','composer',
    'director','editor','producer','production_designer','self','writer'
);

CREATE TABLE title_principals (
    tconst VARCHAR(11) REFERENCES title_basics(tconst) ON DELETE CASCADE,
    ordering SMALLINT,
    nconst VARCHAR(11) REFERENCES name_basics(nconst) ON DELETE CASCADE,
    category enum_job_category,
    job TEXT,
    characters TEXT[],
    PRIMARY KEY (tconst, ordering)
);

\copy title_principals FROM 'data/title.principals.tsv' DELIMITER E'\t' NULL '\N' CSV HEADER;

-- Convert characters from string to array
UPDATE title_principals
SET characters = string_to_array(
                    translate(replace(characters, ' "," ', '@'), '[]"\', ''),
                    '@'
                 )::TEXT[];
'
---

### **Why this is better**
- **Cleaner deletes**: `NOT EXISTS` is more readable and often faster than `EXCEPT`.
- **Foreign keys with `ON DELETE CASCADE`**: keeps data consistent automatically.
- **Direct `TEXT[]` type** for `characters` avoids unnecessary type changes later.
- **Grouped sections** make it easier to maintain.
- **Consistent constraint naming** avoids confusion.

---

If you want, I can also **add indexes** for common join/filter columns (`nconst`, `tconst`, `category`) so queries on this IMDb dataset run much faster.
Do you want me to prepare that optimized indexing section next?




### copilot index explainer

Great follow-up — let’s break it down.

#### 🔍 What I Meant by “Indexes for Common Join/Filter Columns”

In PostgreSQL (and other relational databases), **indexes** are data structures that speed up queries — especially those involving:
- **Joins** between tables (e.g. matching `nconst` across tables)
- **Filters** using `WHERE` clauses (e.g. `WHERE tconst = 'tt1234567'`)
- **Foreign key lookups** (e.g. checking if a referenced `category` exists)

So when I mentioned `nconst`, `tconst`, and `category`, I was referring to columns that frequently appear in:
- `JOIN` conditions
- `WHERE` filters
- `FOREIGN KEY` constraints

Adding indexes on these columns can **dramatically improve performance**, especially on large datasets.

---

#### 🛠 Example: Adding Indexes

Let’s say you have these tables:
- `title_basics(tconst)`
- `name_basics(nconst)`
- `title_principals(tconst, nconst, category)`

You can add indexes like this:

```sql
-- Index for fast lookup of titles
CREATE INDEX idx_title_basics_tconst ON title_basics(tconst);

-- Index for fast lookup of names
CREATE INDEX idx_name_basics_nconst ON name_basics(nconst);

-- Composite index for fast joins and filters on title_principals
CREATE INDEX idx_title_principals_tconst_nconst ON title_principals(tconst, nconst);

-- Optional: index on category if you filter by it often
CREATE INDEX idx_title_principals_category ON title_principals(category);
```

---

###$ ⚡ When Indexes Help Most
- Queries like:
  ```sql
  SELECT * FROM title_principals WHERE tconst = 'tt1234567';
  ```
- Joins like:
  ```sql
  SELECT * FROM title_principals tp
  JOIN name_basics nb ON tp.nconst = nb.nconst;
  ```

Let me know if you want help analyzing your query plans or deciding which indexes are worth adding based on your workload!
