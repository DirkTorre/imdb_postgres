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
