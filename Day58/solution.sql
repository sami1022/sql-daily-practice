-- 1. Combine using UNION ALL
SELECT order_id, customer_id, amount
FROM online_orders
UNION ALL
SELECT order_id, customer_id, amount
FROM store_orders;

-- 2. Compare with UNION
SELECT order_id
FROM online_orders
UNION
SELECT order_id
FROM store_orders;

-- 3. Count duplicates after UNION ALL
SELECT order_id, COUNT(*) AS occurrence
FROM (
    SELECT order_id FROM online_orders
    UNION ALL
    SELECT order_id FROM store_orders
) AS combined
GROUP BY order_id
HAVING COUNT(*) > 1;

-- 4. Filter combined results
SELECT *
FROM (
    SELECT order_id, amount FROM online_orders
    UNION ALL
    SELECT order_id, amount FROM store_orders
) AS combined_orders
WHERE amount > 5000;

-- 5. Aggregate combined results
SELECT SUM(amount) AS total_revenue
FROM (
    SELECT amount FROM online_orders
    UNION ALL
    SELECT amount FROM store_orders
) AS all_orders;
