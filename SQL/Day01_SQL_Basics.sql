-- Day 1: SQL Basics

-- Create Database
CREATE DATABASE CompanyDB;

-- Use Database
USE CompanyDB;

-- Create Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    City VARCHAR(50)
);

-- Insert Data
INSERT INTO Employees VALUES
(1,'Tanmay','IT',50000,'Pune'),
(2,'Rahul','HR',45000,'Mumbai'),
(3,'Priya','Finance',60000,'Delhi'),
(4,'Amit','IT',70000,'Pune'),
(5,'Yash','Marketing',55000,'Bangalore');

-- Display all records
SELECT * FROM Employees;

-- Display specific columns
SELECT Name, Salary FROM Employees;

-- Employees with salary above 50000
SELECT * FROM Employees
WHERE Salary > 50000;

-- Sort by salary
SELECT * FROM Employees
ORDER BY Salary DESC;

-- Unique departments
SELECT DISTINCT Department
FROM Employees;
