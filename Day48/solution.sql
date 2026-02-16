-- 1. Total revenue per customer
SELECT 
    c.customer_id,
    c.name,
    SUM(o.amount) AS total_revenue
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

-- 2. Customers who never placed an order
SELECT 
    c.customer_id,
    c.name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- 3. Top 3 customers by total spending
SELECT 
    c.customer_id,
    c.name,
    SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 3;

-- 4. Categorize customers by spending
SELECT 
    c.customer_id,
    c.name,
    SUM(o.amount) AS total_spent,
    CASE 
        WHEN SUM(o.amount) >= 50000 THEN 'High'
        WHEN SUM(o.amount) >= 20000 THEN 'Medium'
        ELSE 'Low'
    END AS spending_category
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

-- 5. Customers who placed orders in last 30 days
SELECT DISTINCT 
    c.customer_id,
    c.name
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_date >= CURRENT_DATE - INTERVAL '30 days';
