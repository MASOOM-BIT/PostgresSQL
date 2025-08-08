-- Dropping a Database in SQL
Drop database Javatpoint;

-- While using this above command, we may encounter this below error:

-- ERROR: database "Javatpoint" is being accessed by other users  
-- Detail: There is 1 other session using the database.  

-- To resolve this, we can terminate the other sessions before dropping the database.

REVOKE CONNECT ON DATABASE Javatpoint from public;  

-- This command revokes the connect privilege from all users, preventing new connections.
SELECT pg_terminate_backend(pg_stat_activity.pid)  
FROM pg_stat_activity  
WHERE pg_stat_activity.datname = 'Javatpoint';  -- This command terminates all active connections to the database.

