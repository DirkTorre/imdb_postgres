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


## todo:

todo:

- use the temp tconst table to remove values from other tables
- decide if movies that are not tv movies or normal movies should be stored.
- if the database is ready, create an update script
- clean and document the code

done:

- transform data to usefull SQL database structure
