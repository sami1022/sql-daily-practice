-- 1. Total revenue per month
SELECT DATE_TRUNC('month', order_date) AS month,
SUM(amount) AS monthly_revenue
FROM orders
GROUP BY month
ORDER BY month;

-- 2. Top 5 customers by revenue
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- 3. Highest selling day
SELECT order_date, SUM(amount) AS daily_revenue
FROM orders
GROUP BY order_date
ORDER BY daily_revenue DESC
LIMIT 1;

-- 4. Revenue growth (day-over-day)
SELECT order_date,
SUM(amount) AS revenue,
SUM(amount) - LAG(SUM(amount)) OVER(ORDER BY order_date) AS growth
FROM orders
GROUP BY order_date
ORDER BY order_date;

-- 5. Top performing product
SELECT product_id, SUM(amount) AS product_revenue
FROM orders
GROUP BY product_id
ORDER BY product_revenue DESC
LIMIT 1;
