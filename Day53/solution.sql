-- 1. EXPLAIN simple query
EXPLAIN
SELECT *
FROM customers
WHERE customer_id = 101;

-- 2. EXPLAIN JOIN query
EXPLAIN
SELECT c.name, o.amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.amount > 5000;

-- 3. EXPLAIN with ORDER BY
EXPLAIN
SELECT *
FROM orders
ORDER BY order_date DESC;

-- 4. EXPLAIN with GROUP BY
EXPLAIN
SELECT customer_id, SUM(amount)
FROM orders
GROUP BY customer_id;

-- 5. EXPLAIN range query
EXPLAIN
SELECT *
FROM orders
WHERE amount BETWEEN 1000 AND 5000;
