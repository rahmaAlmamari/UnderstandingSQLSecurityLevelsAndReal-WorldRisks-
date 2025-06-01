USE CompanyDB;

SELECT * FROM HR.Employees;

-- Create a read-only role
CREATE ROLE ReadOnly_Dev;

-- Grant SELECT permission only
GRANT SELECT ON SCHEMA::HR TO ReadOnly_Dev;

-- Add a user to this role
CREATE USER DevUser FOR LOGIN DevLogin;
ALTER ROLE ReadOnly_Dev ADD MEMBER DevUser;

-- As DevUser (member of ReadOnly_Dev role)

EXECUTE AS USER = 'DevUser';
-- This will work
SELECT * FROM HR.Employees;

-- These will fail
USE master;
SELECT * FROM Sales.Customers;