/*
==========================================
Day 2 - SQL JOINS
Author : Tanmay Ghate
Topic  : SQL Joins Practice
==========================================
*/

-- ========================================
-- Create Database
-- ========================================

CREATE DATABASE Day2_SQL_Practice;

USE Day2_SQL_Practice;

-- ========================================
-- Create Customers Table
-- ========================================

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);

-- ========================================
-- Create Orders Table
-- ========================================

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50),
    Category VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2),
    OrderDate DATE
);

-- ========================================
-- Insert Customers
-- ========================================

INSERT INTO Customers VALUES
(101,'Rahul','Pune'),
(102,'Priya','Mumbai'),
(103,'Amit','Delhi'),
(104,'Sneha','Bangalore'),
(105,'Rohan','Nagpur'),
(106,'Neha','Pune'),
(107,'Karan','Hyderabad'),
(108,'Pooja','Mumbai'),
(109,'Akash','Delhi'),
(110,'Anjali','Pune');

-- ========================================
-- Insert Orders
-- ========================================

INSERT INTO Orders VALUES
(1001,101,'Laptop','Electronics',1,65000,'2026-01-10'),
(1002,102,'Mouse','Electronics',2,800,'2026-01-12'),
(1003,103,'Chair','Furniture',1,3500,'2026-01-14'),
(1004,104,'Table','Furniture',1,6500,'2026-01-16'),
(1005,105,'Keyboard','Electronics',1,1500,'2026-01-18'),
(1006,106,'Monitor','Electronics',2,12000,'2026-01-20'),
(1007,107,'Book','Stationery',5,400,'2026-01-22'),
(1008,108,'Pen','Stationery',10,30,'2026-01-24'),
(1009,109,'Headphones','Electronics',1,3000,'2026-01-25'),
(1010,110,'Desk','Furniture',1,9000,'2026-01-27');

-- ========================================
-- Basic Queries
-- ========================================

-- 1
SELECT * FROM Customers;

-- 2
SELECT * FROM Orders;

-- 3
SELECT CustomerName, City
FROM Customers;

-- 4
SELECT Product, Price
FROM Orders;

-- ========================================
-- INNER JOIN
-- ========================================

-- 5
SELECT
C.CustomerName,
O.Product,
O.Price
FROM Customers C
INNER JOIN Orders O
ON C.CustomerID = O.CustomerID;

-- ========================================
-- LEFT JOIN
-- ========================================

-- 6
SELECT
C.CustomerName,
O.Product
FROM Customers C
LEFT JOIN Orders O
ON C.CustomerID = O.CustomerID;

-- ========================================
-- RIGHT JOIN
-- ========================================

-- 7
SELECT
C.CustomerName,
O.Product
FROM Customers C
RIGHT JOIN Orders O
ON C.CustomerID = O.CustomerID;

-- ========================================
-- FULL OUTER JOIN
-- ========================================

-- 8
SELECT
C.CustomerName,
O.Product
FROM Customers C
FULL OUTER JOIN Orders O
ON C.CustomerID = O.CustomerID;

-- ========================================
-- CROSS JOIN
-- ========================================

-- 9
SELECT
CustomerName,
Product
FROM Customers
CROSS JOIN Orders;

-- ========================================
-- WHERE
-- ========================================

-- 10
SELECT *
FROM Orders
WHERE Price > 5000;

-- 11
SELECT *
FROM Customers
WHERE City='Pune';

-- ========================================
-- ORDER BY
-- ========================================

-- 12
SELECT *
FROM Orders
ORDER BY Price DESC;

-- ========================================
-- GROUP BY
-- ========================================

-- 13
SELECT
Category,
COUNT(*) TotalOrders
FROM Orders
GROUP BY Category;

-- 14
SELECT
City,
COUNT(*) TotalCustomers
FROM Customers
GROUP BY City;

-- ========================================
-- Aggregate Functions
-- ========================================

-- 15
SELECT
SUM(Price) TotalSales
FROM Orders;

-- 16
SELECT
AVG(Price) AveragePrice
FROM Orders;

-- 17
SELECT
MAX(Price) HighestPrice
FROM Orders;

-- 18
SELECT
MIN(Price) LowestPrice
FROM Orders;

-- ========================================
-- LIKE
-- ========================================

-- 19
SELECT *
FROM Customers
WHERE CustomerName LIKE 'P%';

-- ========================================
-- BETWEEN
-- ========================================

-- 20
SELECT *
FROM Orders
WHERE Price BETWEEN 1000 AND 10000;

-- ========================================
-- IN
-- ========================================

-- 21
SELECT *
FROM Customers
WHERE City IN ('Pune','Mumbai');

-- ========================================
-- DISTINCT
-- ========================================

-- 22
SELECT DISTINCT Category
FROM Orders;

-- ========================================
-- COUNT
-- ========================================

-- 23
SELECT COUNT(*) TotalCustomers
FROM Customers;

-- ========================================
-- HAVING
-- ========================================

-- 24
SELECT
Category,
SUM(Price) TotalSales
FROM Orders
GROUP BY Category
HAVING SUM(Price) > 10000;

-- ========================================
-- Final Join Report
-- ========================================

-- 25
SELECT
C.CustomerName,
C.City,
O.Product,
O.Category,
O.Quantity,
O.Price,
O.OrderDate
FROM Customers C
INNER JOIN Orders O
ON C.CustomerID = O.CustomerID
ORDER BY O.Price DESC;
