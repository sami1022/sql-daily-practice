-- 1. Combine all customers (unique)
SELECT customer_id, name FROM online_customers
UNION
SELECT customer_id, name FROM store_customers
UNION
SELECT customer_id, name FROM mobile_customers;

-- 2. Common customers (online & store)
SELECT customer_id, name FROM online_customers
INTERSECT
SELECT customer_id, name FROM store_customers;

-- 3. Customers only in mobile
SELECT customer_id, name FROM mobile_customers
EXCEPT
SELECT customer_id, name FROM online_customers
UNION
SELECT customer_id, name FROM mobile_customers
EXCEPT
SELECT customer_id, name FROM store_customers;

-- 4. Count total unique customers
SELECT COUNT(*) AS total_unique_customers
FROM (
    SELECT customer_id FROM online_customers
    UNION
    SELECT customer_id FROM store_customers
    UNION
    SELECT customer_id FROM mobile_customers
) AS all_customers;

-- 5. Label customer source
SELECT customer_id, name, 'Online' AS source
FROM online_customers
UNION ALL
SELECT customer_id, name, 'Store'
FROM store_customers
UNION ALL
SELECT customer_id, name, 'Mobile'
FROM mobile_customers;
