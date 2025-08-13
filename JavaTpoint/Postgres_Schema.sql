-- PostgreSQL Schema: Detailed Notes

-- 1. What is a Schema?
-- A schema is a logical container for database objects (tables, views, functions, etc.).
-- It helps organize objects into namespaces, improving manageability and security.

-- 2. Default Schema
-- PostgreSQL creates a default schema named "public" for each database.
-- Objects without a specified schema are placed in "public".

-- 3. Creating a Schema
-- Syntax:
CREATE SCHEMA schema_name;

-- Example:
CREATE SCHEMA sales;

-- 4. Creating Objects in a Schema
-- You can specify the schema when creating objects:
CREATE TABLE sales.orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE
);

-- 5. Accessing Objects in a Schema
-- Use the dot notation: schema_name.object_name
SELECT * FROM sales.orders;

-- 6. Setting the Search Path
-- The search_path determines which schemas PostgreSQL looks in for unqualified object names.
-- Example:
SET search_path TO sales, public;

-- 7. Altering and Dropping Schemas
-- To rename a schema:
ALTER SCHEMA sales RENAME TO new_sales;

-- To drop a schema (removes all contained objects):
DROP SCHEMA sales CASCADE;

-- 8. Schema Privileges
-- Grant privileges to users on schemas:
GRANT USAGE ON SCHEMA sales TO username;
GRANT CREATE ON SCHEMA sales TO username;

-- 9. Listing Schemas
-- To list all schemas:
SELECT schema_name FROM information_schema.schemata;

-- 10. Best Practices
-- - Use schemas to separate application modules or environments (e.g., dev, test, prod).
-- - Limit access to schemas for security.
-- - Avoid cluttering the public schema.

-- References:
-- https://www.postgresql.org/docs/current/ddl-schemas.html