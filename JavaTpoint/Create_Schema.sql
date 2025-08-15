-- Create a schema
CREATE SCHEMA my_schema;

-- Create a table in the schema
CREATE TABLE my_schema.employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary NUMERIC(10,2)
);

-- Javatpoint=#\dn  
-- After executing the above command, we can see the list of schema in the below screenshot:

javatpoint=# create table jtp.Employee(   
Emp_ID  INT NOT NULL,   
Emp_NAME VARCHAR (25)  NOT NULL,   
Emp_AGE  INT NOT NULL,   
Emp_ADDRESS  CHAR (30),   
Emp_SALARY   Real,   
PRIMARY KEY (Emp_ID)  
);  

-- Drop a schema using SQL (shell or query tool)
DROP SCHEMA my_schema;

-- To drop a schema and all its objects, use:
DROP SCHEMA my_schema CASCADE;

-- In pgAdmin 4:
-- 1. Expand the "Schemas" node in the browser tree.
-- 2. Right-click on "my_schema".
-- 3. Select "Delete/Drop".
-- 4. Confirm the action.