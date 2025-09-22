-- Connect to the target database
\c imdb

-- =========================
-- 1. TITLE_BASICS
-- =========================

-- Normalize genres into separate table
CREATE TABLE genres (
    tconst VARCHAR(11) REFERENCES title_basics(tconst) ON DELETE CASCADE,
    genre VARCHAR(20)
);
