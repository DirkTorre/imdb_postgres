ALTER TABLE IF EXISTS genres
    ADD CONSTRAINT genres_tconst_fkey FOREIGN KEY (tconst)
    REFERENCES title_basics (tconst) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE CASCADE;


ALTER TABLE IF EXISTS known_for_titles
    ADD CONSTRAINT known_for_titles_fk FOREIGN KEY (tconst)
    REFERENCES title_basics (tconst) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE CASCADE;


ALTER TABLE IF EXISTS primary_profession
    ADD CONSTRAINT primary_profession_nconst_fkey FOREIGN KEY (nconst)
    REFERENCES name_basics (nconst) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE CASCADE;


ALTER TABLE IF EXISTS title_directors
    ADD CONSTRAINT title_directors_fk_nconst FOREIGN KEY (nconst)
    REFERENCES name_basics (nconst) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS title_directors
    ADD CONSTRAINT title_directors_fk_tconst FOREIGN KEY (tconst)
    REFERENCES title_basics (tconst) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS title_principals
    ADD CONSTRAINT title_principals_fk_nconst FOREIGN KEY (nconst)
    REFERENCES name_basics (nconst) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS title_principals
    ADD CONSTRAINT title_principals_fk_tconst FOREIGN KEY (tconst)
    REFERENCES title_basics (tconst) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS title_ratings
    ADD CONSTRAINT title_ratings_fk FOREIGN KEY (tconst)
    REFERENCES title_basics (tconst) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE CASCADE;


ALTER TABLE IF EXISTS title_writers
    ADD CONSTRAINT title_writers_fk_nconst FOREIGN KEY (nconst)
    REFERENCES name_basics (nconst) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS title_writers
    ADD CONSTRAINT title_writers_fk_tconst FOREIGN KEY (tconst)
    REFERENCES title_basics (tconst) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


CREATE INDEX IF NOT EXISTS title_ratings_index
    ON title_ratings(tconst);

CREATE INDEX IF NOT EXISTS title_basics_index
    ON title_basics(tconst);

CREATE INDEX IF NOT EXISTS name_basics_index
    ON name_basics(nconst);

CREATE INDEX IF NOT EXISTS title_principals_index
    ON title_principals(tconst, ordering);
    