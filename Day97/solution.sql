-- 1. Optimized top customers query
SELECT customer_id, SUM(amount) AS total_revenue
FROM orders
GROUP BY customer_id
ORDER BY total_revenue DESC
LIMIT 5;

-- 2. Add index for faster filtering
CREATE INDEX idx_customer_id ON orders(customer_id);

-- 3. Add index for date filtering
CREATE INDEX idx_order_date ON orders(order_date);

-- 4. Optimized JOIN query
SELECT c.name, SUM(o.amount) AS revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;

-- 5. Analyze query performance
EXPLAIN
SELECT customer_id, SUM(amount)
FROM orders
GROUP BY customer_id;
