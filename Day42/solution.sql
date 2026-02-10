-- String functions
SELECT 
    UPPER(name) AS upper_name,
    LOWER(city) AS lower_city
FROM employees;

SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    LENGTH(CONCAT(first_name, last_name)) AS name_length
FROM employees;

-- LIKE pattern matching
SELECT name
FROM employees
WHERE name LIKE 'A%';

-- Numeric functions
SELECT 
    product_name,
    ROUND(price, 2) AS rounded_price,
    CEIL(price) AS ceil_price,
    FLOOR(price) AS floor_price
FROM sales;

-- Date functions
SELECT 
    order_id,
    DATE(order_date) AS order_date_only,
    EXTRACT(YEAR FROM order_date) AS order_year
FROM orders;

-- Date arithmetic
SELECT 
    order_id,
    delivery_date - order_date AS delivery_time
FROM orders;
