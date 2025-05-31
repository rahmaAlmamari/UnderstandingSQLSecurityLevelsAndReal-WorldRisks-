CREATE DATABASE CompanyDB;
USE CompanyDB;

--create schemas 
CREATE SCHEMA HR;
CREATE SCHEMA Sales;

-- HR schema tables
CREATE TABLE HR.Employees (
    EmployeeID INT PRIMARY KEY,
    Name NVARCHAR(50),
    Position NVARCHAR(50)
);

INSERT INTO HR.Employees VALUES (1, 'Alice', 'Manager'), (2, 'Bob', 'Analyst');

-- Sales schema tables
CREATE TABLE Sales.Customers (
    CustomerID INT PRIMARY KEY,
    Name NVARCHAR(50),
    Region NVARCHAR(50)
);

INSERT INTO Sales.Customers VALUES (1, 'Acme Corp', 'East'), (2, 'Beta LLC', 'West');


