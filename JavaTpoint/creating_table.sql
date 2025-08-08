-- Notes: How to Create a Table in PostgreSQL

-- 1. Basic Syntax:
-- CREATE TABLE table_name (
--     column1 datatype [constraints],
--     column2 datatype [constraints],
--     ...
-- );

-- 2. Example:
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,         -- Auto-incrementing integer
    name VARCHAR(100) NOT NULL,    -- String up to 100 characters, cannot be null
    email VARCHAR(255) UNIQUE,     -- Unique email address
    hire_date DATE                 -- Date of hiring
);

-- 3. Common Data Types:
-- INTEGER, SERIAL, VARCHAR(n), TEXT, DATE, TIMESTAMP, BOOLEAN

-- 4. Common Constraints:
-- PRIMARY KEY, NOT NULL, UNIQUE, CHECK, FOREIGN KEY

-- 5. To view all tables:
-- \dt

-- 6. To describe a table:
-- \d table_name

-- 7. To drop a table:
-- DROP TABLE table_name;

-- End of Notes

-- Steps to Create a Table using pgAdmin (GUI):

-- 1. Open pgAdmin and connect to your PostgreSQL server.
-- 2. In the Browser panel, expand your database.
-- 3. Right-click on "Tables" under your database schema.
-- 4. Select "Create" > "Table...".
-- 5. In the "General" tab, enter the table name (e.g., employees).
-- 6. Switch to the "Columns" tab and click the "+" button to add columns:
--    - Specify column name, data type, and constraints (e.g., NOT NULL, PRIMARY KEY).
-- 7. Optionally, set constraints in the "Constraints" tab (e.g., Primary Key, Unique).
-- 8. Click "Save" to create the table.