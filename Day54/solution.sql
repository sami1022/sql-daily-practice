-- 1. Avoid SELECT *
SELECT customer_id, name, city
FROM customers;

-- 2. Optimized filtering (range instead of function)
SELECT *
FROM orders
WHERE order_date >= '2024-01-01'
  AND order_date < '2025-01-01';

-- 3. Avoid function on indexed column
-- Not recommended:
-- WHERE YEAR(order_date) = 2024

-- Recommended:
SELECT *
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31';

-- 4. Replace subquery with JOIN
SELECT c.name, o.amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;

-- 5. Optimized aggregation
SELECT customer_id, SUM(amount) AS total_amount
FROM orders
GROUP BY customer_id;
