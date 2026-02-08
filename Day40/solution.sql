-- 1. Extract date from timestamp
SELECT 
    order_id,
    DATE(order_date) AS order_only_date
FROM orders;

-- 2. Extract year, month, and day
SELECT 
    order_id,
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    EXTRACT(DAY FROM order_date) AS order_day
FROM orders;

-- 3. Orders placed in year 2024
SELECT *
FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 2024;

-- 4. Orders placed in March
SELECT *
FROM orders
WHERE EXTRACT(MONTH FROM order_date) = 3;

-- 5. Orders placed on a specific date
SELECT *
FROM orders
WHERE DATE(order_date) = '2024-03-15';
