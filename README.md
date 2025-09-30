# Project to create and update an IMdB database


## Setting up the database

### First download the data with the python script (fast)

Install the dependencies (with uv) and run main.py (`uv run main.py`)

### Run commands to execute the creation of the database

```bash
su - postgres
psql -d 'postgres' -U postgres -c "DROP DATABASE IF EXISTS imdb;"
psql -d 'postgres' -U postgres -c "CREATE DATABASE imdb;"
exit
psql -h localhost -d imdb -U postgres -p 5432 -a -f create_and_load_data.sql
```

### notes

One downside of creating index after importing is that table must be locked, and that may take long time (it will not be locked in opposite scenario).

creating the database now takes 20 minutes (with the indices added)

## Practicing queries by answering questions about the movie database

The queries can be found in `queries.sql`, and the results can be found in `results.md`.

## todo:

todo:
- create update script
- redesign initial loading of data so that everything works immediately.
- clean and document the code

done:

- transform and load the data
- transform data to usefull SQL database structure
- look at copilot improvements
- create indices