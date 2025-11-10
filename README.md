# Project to create and update an IMdB database


## Setting up the database

### First download the data

Run the `download_files.sh` script.

### Run commands to execute the creation of the database

#### old commands for deleting the old database and creating a new one

```bash
su - postgres
psql -d 'postgres' -U postgres -c "DROP DATABASE IF EXISTS imdb;"
psql -d 'postgres' -U postgres -c "CREATE DATABASE imdb;"
exit
psql -h localhost -d imdb -U postgres -p 5432 -a -f create_and_load_data.sql
```

#### new commands that does not remove the database, but updates values

Manualy check if the database excists, if not rune the creating query below.
Execute the rest afterwards.
```bash
su - postgres
psql -d 'postgres' -U postgres -c "CREATE DATABASE imdb2;"
exit
psql -h localhost -d imdb2 -U postgres -p 5432 -a -f scripts/types.sql
psql -h localhost -d imdb2 -U postgres -p 5432 -a -f scripts/tables.sql
psql -h localhost -d imdb2 -U postgres -p 5432 -a -f scripts/update_tables.sql
```


### notes

One downside of creating index after importing is that table must be locked, and that may take long time (it will not be locked in opposite scenario).

creating the database now takes 20 minutes (with the indices added)

## Practicing queries by answering questions about the movie database

The queries can be found in `queries.sql`, and the results can be found in `results.md`.

## todo:

todo:
- answer the questions
- create separate, definition, initialization and update script so that everything works immediately.
- clean and document the code

done:

- transform and load the data
- transform data to usefull SQL database structure
- look at copilot improvements
- create indices
