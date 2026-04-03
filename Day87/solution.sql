-- 1. Total revenue
SELECT SUM(amount) AS total_revenue
FROM orders;

-- 2. Average order value
SELECT AVG(amount) AS avg_order_value
FROM orders;

-- 3. Total number of orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- 4. Revenue per customer
SELECT customer_id, SUM(amount) AS customer_revenue
FROM orders
GROUP BY customer_id;

-- 5. Daily revenue trend
SELECT order_date, SUM(amount) AS daily_revenue
FROM orders
GROUP BY order_date
ORDER BY order_date;
