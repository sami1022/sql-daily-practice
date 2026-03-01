-- 1. Customers in online but not in store
SELECT customer_id, name
FROM online_customers
EXCEPT
SELECT customer_id, name
FROM store_customers;

-- 2. Customers in store but not in online
SELECT customer_id, name
FROM store_customers
EXCEPT
SELECT customer_id, name
FROM online_customers;

-- 3. Compare with LEFT JOIN method
SELECT o.customer_id, o.name
FROM online_customers o
LEFT JOIN store_customers s
ON o.customer_id = s.customer_id
WHERE s.customer_id IS NULL;

-- 4. Count unmatched online customers
SELECT COUNT(*) AS unmatched_online
FROM (
    SELECT customer_id
    FROM online_customers
    EXCEPT
    SELECT customer_id
    FROM store_customers
) AS unmatched_data;

-- 5. Use DISTINCT explicitly (optional)
SELECT DISTINCT customer_id
FROM online_customers
EXCEPT
SELECT DISTINCT customer_id
FROM store_customers;
