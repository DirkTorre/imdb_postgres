ALTER TABLE name_basics ADD CONSTRAINT name_basics_pk PRIMARY KEY (nconst) NOT NULL;
ALTER TABLE name_basics ALTER primaryprofession TYPE text[] USING string_to_array(primaryprofession, ',');
ALTER TABLE name_basics ALTER knownfortitles TYPE text[] USING string_to_array(knownfortitles, ',');

ALTER TABLE title_basics ADD CONSTRAINT title_basics_pk PRIMARY KEY (nconst) NOT NULL;
ALTER TABLE title_basics ALTER genres TYPE text[] USING string_to_array(genres, ',');

ALTER TABLE title_ratings ADD CONSTRAINT title_ratings_pk FOREIGN KEY (tconst) REFERENCES title_basics(tconst) NOT NULL;

ALTER TABLE title_crew ADD CONSTRAINT title_crew_pk FOREIGN KEY (tconst) REFERENCES title_basics(tconst) NOT NULL;
ALTER TABLE title_crew ALTER directors TYPE text[] USING string_to_array(directors, ',');
ALTER TABLE title_crew ALTER writers TYPE text[] USING string_to_array(writers, ',');

ALTER TABLE title_principals ADD COLUMN id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY;
ALTER TABLE title_principals ADD CONSTRAINT title_principals_fk_tconst FOREIGN KEY (tconst) REFERENCES title_basics(tconst);
ALTER TABLE title_principals ADD CONSTRAINT title_principals_fk_nconst FOREIGN KEY (nconst) REFERENCES name_basics(nconst);

