-- Script: DML update and delete


USE ecom;

-- 1. VERIFY INITIAL STATE
SELECT * 
FROM customers;


-- 2. UPDATE DATA
UPDATE customers 
SET name = 'hajar'
WHERE email = 'sara@gmail.com';

-- Verify the update was successful
SELECT * 
FROM customers 
WHERE email = 'sara@gmail.com';


-- 3. DELETE DATA
DELETE FROM customers
WHERE email = 'sara@gmail.com';

-- Verify the record has been completely removed
SELECT * 
FROM customers;