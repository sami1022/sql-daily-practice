-- 1. Add 7 days to order date
SELECT 
    order_id,
    order_date,
    order_date + INTERVAL '7 days' AS new_date
FROM orders;

-- 2. Subtract 3 days from delivery date
SELECT 
    order_id,
    delivery_date,
    delivery_date - INTERVAL '3 days' AS adjusted_date
FROM orders;

-- 3. Difference between delivery date and order date
SELECT 
    order_id,
    delivery_date - order_date AS delivery_duration
FROM orders;

-- 4. Orders delivered within 5 days
SELECT *
FROM orders
WHERE delivery_date - order_date <= 5;

-- 5. Orders placed in last 30 days
SELECT *
FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL '30 days';
