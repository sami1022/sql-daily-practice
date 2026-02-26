-- 1. Combine orders (remove duplicates)
SELECT order_id, customer_id, amount
FROM online_orders
UNION
SELECT order_id, customer_id, amount
FROM store_orders;

-- 2. Combine orders (keep duplicates)
SELECT order_id, customer_id, amount
FROM online_orders
UNION ALL
SELECT order_id, customer_id, amount
FROM store_orders;

-- 3. Add sorting to combined result
SELECT order_id, customer_id, amount
FROM online_orders
UNION
SELECT order_id, customer_id, amount
FROM store_orders
ORDER BY amount DESC;

-- 4. Combine with additional column
SELECT order_id, customer_id, amount, 'Online' AS source
FROM online_orders
UNION
SELECT order_id, customer_id, amount, 'Store' AS source
FROM store_orders;

-- 5. Count total combined orders
SELECT COUNT(*) AS total_orders
FROM (
    SELECT order_id FROM online_orders
    UNION
    SELECT order_id FROM store_orders
) AS combined_orders;
