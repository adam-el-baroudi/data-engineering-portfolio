-- Script: sql joins and unions


-- 1. DATABASE & SCHEMA SETUP
CREATE DATABASE IF NOT EXISTS ecom;
USE ecom;

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

-- Create Orders table
CREATE TABLE orders (
    o_id INT,
    cust_id INT,
    price INT
);

-- Insert Mock Order Data
INSERT INTO orders (o_id, cust_id, price)
VALUES
    (1, 101, 1000),
    (2, 201, 1100),
    (3, 501, 1200);

-- Create Customers table
CREATE TABLE customers (
    id INT,
    name VARCHAR(100),
    email VARCHAR(100)
);

-- Insert Mock Customer Data
INSERT INTO customers (id, name, email) 
VALUES
    (101, 'adam', 'adam@gmail.com'),
    (201, 'sara', 'sara@gmail.com'),
    (301, 'wassim', 'wassim@gmail.com');



-- 2. SQL JOINS

-- INNER JOIN: 
SELECT * 
FROM orders o	
INNER JOIN customers c 
    ON o.cust_id = c.id;

-- INNER JOIN (Specific Columns):
SELECT 
    o.*, 
    c.id 
FROM orders o	
INNER JOIN customers c 
    ON o.cust_id = c.id;


-- LEFT JOIN:
SELECT * 
FROM orders o	
LEFT JOIN customers c 
    ON o.cust_id = c.id;


-- RIGHT JOIN: 
SELECT * 
FROM orders o	
RIGHT JOIN customers c 
    ON o.cust_id = c.id;



-- 3. SET OPERATIONS (UNION)

-- UNION :
SELECT * 
FROM orders o	
LEFT JOIN customers c 
    ON o.cust_id = c.id
UNION
SELECT * 
FROM orders o	
RIGHT JOIN customers c 
    ON o.cust_id = c.id;