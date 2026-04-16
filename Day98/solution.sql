-- 1. Total revenue
SELECT SUM(amount) AS total_revenue
FROM orders;

-- Monthly revenue + growth
SELECT month,
revenue,
(revenue - LAG(revenue) OVER (ORDER BY month)) * 100.0 /
LAG(revenue) OVER (ORDER BY month) AS growth_rate
FROM (
    SELECT DATE_TRUNC('month', order_date) AS month,
    SUM(amount) AS revenue
    FROM orders
    GROUP BY month
) t;

-- 2. Top 10 customers
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

-- 3. Revenue by product category
SELECT p.category, SUM(o.amount) AS revenue
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;

-- 4. Retention rate
WITH first_order AS (
    SELECT customer_id, MIN(order_date) AS first_date
    FROM orders
    GROUP BY customer_id
),
returning AS (
    SELECT DISTINCT o.customer_id
    FROM orders o
    JOIN first_order f
    ON o.customer_id = f.customer_id
    WHERE o.order_date > f.first_date
)
SELECT COUNT(r.customer_id) * 100.0 / COUNT(f.customer_id) AS retention_rate
FROM first_order f
LEFT JOIN returning r
ON f.customer_id = r.customer_id;

-- 5. Average Order Value
SELECT AVG(amount) AS avg_order_value
FROM orders;

-- 6. Inactive customers (60 days)
SELECT c.customer_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
AND o.order_date >= CURRENT_DATE - INTERVAL '60 days'
WHERE o.customer_id IS NULL;

-- 7. Running revenue
SELECT order_date,
SUM(amount) OVER (ORDER BY order_date) AS running_revenue
FROM orders;
