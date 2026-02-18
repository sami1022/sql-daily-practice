-- 1. Create a view for customer order details
CREATE VIEW customer_orders AS
SELECT 
    c.customer_id,
    c.name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;

-- 2. Create a view for total revenue per customer
CREATE VIEW customer_revenue AS
SELECT 
    c.customer_id,
    c.name,
    SUM(o.amount) AS total_revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

-- 3. Query from view
SELECT * FROM customer_orders;

SELECT * FROM customer_revenue;

-- 4. Update through view (only if simple view)
UPDATE customer_orders
SET city = 'Mumbai'
WHERE customer_id = 1;

-- 5. Drop a view
DROP VIEW customer_orders;
