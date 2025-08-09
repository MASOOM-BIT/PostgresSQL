-- Drop a table in PostgreSQL
DROP TABLE IF EXISTS table_name;

-- This command deletes the table and all its data.
-- Replace 'table_name' with your actual table name.
-- Dropping a table from psql (PostgreSQL command line)
-- Connect to your database and run:
-- DROP TABLE IF EXISTS table_name;

-- Dropping a table in pgAdmin
-- In pgAdmin, right-click the table in the Object Browser and select 'Delete/Drop'.
-- Confirm the action to drop the table.



-- Show all tables in the current database


SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public';
