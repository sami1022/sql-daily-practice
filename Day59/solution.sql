-- 1. Customers present in both tables
SELECT customer_id, name
FROM online_customers
INTERSECT
SELECT customer_id, name
FROM store_customers;

-- 2. Compare with INNER JOIN
SELECT o.customer_id, o.name
FROM online_customers o
INNER JOIN store_customers s
ON o.customer_id = s.customer_id;

-- 3. INTERSECT with only customer_id
SELECT customer_id
FROM online_customers
INTERSECT
SELECT customer_id
FROM store_customers;

-- 4. Count common customers
SELECT COUNT(*) AS common_customers
FROM (
    SELECT customer_id
    FROM online_customers
    INTERSECT
    SELECT customer_id
    FROM store_customers
) AS common_data;

-- 5. Use DISTINCT explicitly (optional)
SELECT DISTINCT customer_id
FROM online_customers
INTERSECT
SELECT DISTINCT customer_id
FROM store_customers;
