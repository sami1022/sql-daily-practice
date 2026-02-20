-- 1. Check query plan
EXPLAIN
SELECT *
FROM orders
WHERE customer_id = 101;

-- 2. Query using composite index
EXPLAIN
SELECT *
FROM orders
WHERE customer_id = 101
  AND order_date = '2024-01-01';

-- 3. Query using non-indexed column
EXPLAIN
SELECT *
FROM orders
WHERE status = 'Delivered';

-- 4. Range condition on indexed column
EXPLAIN
SELECT *
FROM orders
WHERE customer_id > 100;

-- 5. Composite index partial usage
EXPLAIN
SELECT *
FROM orders
WHERE customer_id = 101;
