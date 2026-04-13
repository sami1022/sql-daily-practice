-- 1. Monthly revenue
SELECT DATE_TRUNC('month', order_date) AS month,
SUM(amount) AS revenue
FROM orders
GROUP BY month
ORDER BY month;

-- 2. New customers per month
SELECT DATE_TRUNC('month', signup_date) AS month,
COUNT(*) AS new_customers
FROM customers
GROUP BY month
ORDER BY month;

-- 3. Repeat customer rate
WITH customer_orders AS (
    SELECT customer_id, COUNT(*) AS order_count
    FROM orders
    GROUP BY customer_id
)
SELECT 
COUNT(CASE WHEN order_count > 1 THEN 1 END) * 100.0 / COUNT(*) AS repeat_rate
FROM customer_orders;

-- 4. Top 5 customers
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- 5. ARPU (Average Revenue Per User)
SELECT SUM(amount) / COUNT(DISTINCT customer_id) AS arpu
FROM orders;
