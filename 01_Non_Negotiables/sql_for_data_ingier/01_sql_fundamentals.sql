-- 1. DATABASE SETUP
-- Use IF NOT EXISTS to prevent errors if the script is run multiple times
CREATE DATABASE IF NOT EXISTS sales_db;
USE sales_db;


-- 2. DDL: CREATE TABLE
-- Drop the table if it already exists for a clean execution environment
DROP TABLE IF EXISTS stores;

CREATE TABLE stores (
    store_id INT,
    store_name VARCHAR(200)
);


-- 3. DML: INSERT DATA
-- Specify the columns being inserted into for better readability and safety
INSERT INTO stores (store_id, store_name) 
VALUES 
    (1, 'Rabat Electronics'),
    (2, 'Casa Tech Hub');


-- 4. DQL: SELECT DATA
SELECT * 
FROM stores;


-- 5. DDL: ALTER TABLE
-- Add a new column to the existing schema
ALTER TABLE stores 
ADD COLUMN store_city VARCHAR(200);


/* ============================================================================
   CONCEPT NOTES: TRUNCATE vs DROP
   - DROP: Deletes the entire table (structure and all data).
   - TRUNCATE: Empties the table (removes all rows) but keeps the structure intact.
   ============================================================================ */

TRUNCATE TABLE stores;

-- Verify the table structure still exists but is empty
SELECT * 
FROM stores;


/* ============================================================================
   UPCOMING CONCEPTS: SQL KEYS
   These concepts will be explored in the next script (02_sql_keys_constraints.sql):
   - UNIQUE KEY: Ensures all values in a column are distinct.
   - PRIMARY KEY: Uniquely identifies each record (NOT NULL + UNIQUE).
   - FOREIGN KEY: Links data between two tables.
   - CANDIDATE KEY: Any column(s) that can uniquely identify a row.
   - COMPOSITE KEY: A primary key made of multiple columns.
   - SURROGATE KEY: An artificial, system-generated primary key (e.g., auto-increment).
   ============================================================================ */