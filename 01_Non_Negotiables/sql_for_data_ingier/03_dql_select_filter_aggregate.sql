-- FIRST SELECT 
SELECT * FROM dim_customer;


-- LIMIT 
SELECT customer_id,email 
FROM dim_customer
LIMIT 15;


-- WHERE [CONDITION]
-- 1
SELECT * 
FROM dim_customer 
WHERE gender = 'F';

-- 2 (AND/OR)
SELECT * 
FROM dim_customer 
WHERE 
	(gender = 'F') AND ((country = 'France') OR (join_date > '2022-01-01'));
    
    
-- LIKE
-- 1)
SELECT * 
FROM dim_customer
WHERE first_name LIKE 'T%';

-- 2)
SELECT * 
FROM dim_customer
WHERE first_name LIKE 'T%y';

-- 3) name start with T and after two alphabets there is f and finish with y
SELECT * 
FROM dim_customer
WHERE first_name LIKE 'T__f%y';

    
-- Sorting
SELECT * 
FROM dim_product
ORDER BY unit_price DESC 
LIMIT 3;


-- ALIAS
SELECT 
	product_key,
    product_id,
    product_name AS 'product name',
    category
FROM 
	dim_product;


-- GROUPING
-- 1
SELECT 
	category,
    avg(unit_price) AS avg_price,
    sum(unit_price) AS total_price
FROM 
	dim_product
GROUP BY 
	category;
    
-- 2
SELECT 
	category,
    avg(unit_price) AS avg_price,
    sum(unit_price) AS total_price
FROM 
	dim_product
GROUP BY 
	category
HAVING
	avg_price > 500;
    
/* ============================================================================
   EXECUTION FLOW
   ============================================================================ */

-- SYNTAX ORDER (How we write it):
-- SELECT -> FROM -> WHERE -> GROUP BY -> HAVING -> ORDER BY -> LIMIT

-- EXECUTION ORDER (How the engine runs it):

-- 1️⃣ FROM       (Identifies the source tables and joins them)
--       ↓
-- 2️⃣ WHERE      (Filters the base data according to conditions)
--       ↓
-- 3️⃣ GROUP BY   (Aggregates the data into categories/groups)
--       ↓
-- 4️⃣ HAVING     (Filters the aggregated data from the GROUP BY)
--       ↓
-- 5️⃣ SELECT     (Pulls the specific columns/expressions requested)
--       ↓
-- 6️⃣ ORDER BY   (Sorts the final result set)
--       ↓
-- 7️⃣ LIMIT      (Restricts the total number of rows returned)
    