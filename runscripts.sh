# execute these commands:
# su - postgres
# psql -d 'postgres' -U postgres -c "DROP DATABASE IF EXISTS imdb;"
# psql -d 'postgres' -U postgres -c "CREATE DATABASE imdb;"
# exit

psql -h localhost -d imdb -U postgres -p 5432 -a -f scripts/table_definitions.sql
psql -h localhost -d imdb -U postgres -p 5432 -a -f scripts/load_data.sql
psql -h localhost -d imdb -U postgres -p 5432 -a -f scripts/constraint_definitions.sql

# todo clean the data after it is loaded, some before the constraints are mode
