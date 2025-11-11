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

Manualy check if the database excists, if not run the creating query below.
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
- fix error characters isn't of type text[]
- use the insert, update, delete fucntions from merge into (see copilot answer below)
- create separate, definition, initialization and update script so that everything works immediately.
- create script that creates and removes relationships
- create script that creates and removes indixing
- answer the questions, and create views
- clean and document the code

done:

- transform and load the data
- transform data to usefull SQL database structure
- look at copilot improvements
- create indices


It's possible to delete rows with merge!

  
  
PostgreSQL 15 and later supports the `MERGE` statement, which allows you to perform **INSERT**, **UPDATE**, or **DELETE** operations in a single statement based on matching conditions.
Below is a complete example demonstrating how to merge data into the `title_principals` table and delete rows that are no longer required.
```sql
-- PostgreSQL SQL
-- Example: Merge data into the title_principals table
-- and delete rows that do not match the source
MERGE INTO title_principals AS target
USING temp_title_principals AS source
ON target.title_id = source.title_id
AND target.person_id = source.person_id
WHEN MATCHED AND source.is_active = FALSE THEN
-- Delete rows in target that meet a specific condition based on source
DELETE
WHEN MATCHED THEN
-- Update matching rows
UPDATE SET
role = source.role,
category = source.category,
updated_at = NOW()
WHEN NOT MATCHED THEN
-- Insert new rows from source that do not exist in target
INSERT (title_id, person_id, role, category, created_at, updated_at)
VALUES (source.title_id, source.person_id, source.role, source.category, NOW(), NOW());
```
## Explanation:  
  
1. **`MERGE INTO title_principals AS target`**: The table you want to modify is aliased as `target`.  
2. **`USING temp_title_principals AS source`**: The source of new/updated data; could be a staging table or a CTE.  
3. **`ON target.title_id = source.title_id AND target.person_id = source.person_id`**: Defines the matching criteria between the target and source tables.  
4. **`WHEN MATCHED AND source.is_active = FALSE THEN DELETE`**: Deletes rows in `title_principals` that are marked inactive in the source.  
5. **`WHEN MATCHED THEN UPDATE`**: Updates columns of matching rows based on source data.  
6. **`WHEN NOT MATCHED THEN INSERT`**: Inserts new rows from the source that do not exist in the target table.  
  
## Usage Example:  
  
Suppose `temp_title_principals` contains new data:
| title_id | person_id | role       | category   | is_active |  
|----------|-----------|------------|-----------|----------|  
| t001     | p001      | Actor      | Cast      | TRUE     |  
| t002     | p002      | Director   | Crew      | FALSE    |  
  
  
- `t001/p001` exists: update role/category.  
- `t002/p002` exists: delete from `title_principals` because `is_active=FALSE`.  
- Any missing rows in target will be inserted.  
  
### Notes:  
  
- Ensure your PostgreSQL version is **15 or higher**, as `MERGE` is not available in older versions.  
- You can replace `temp_title_principals` with a CTE (`WITH` clause) if needed.  
- Use `NOW()` or `CURRENT_TIMESTAMP` for timestamp columns.   
  
This statement provides a clean way to **update, insert, and delete** in one transaction without multiple separate statements, ensuring data consistency and efficiency.


Source(s):  
[^1^]: https://www.postgresql.org/docs/current/sql-merge.html  
[^2^]: https://stackoverflow.com/questions/75749162/can-pg15s-merge-statement-delete-rows-that-exist-in-the-destination-table-but-a  
[^3^]: https://www.geeksforgeeks.org/postgresql/postgresql-merge-statement/  
[^4^]: https://www.rockdata.net/tutorial/dml-merge/