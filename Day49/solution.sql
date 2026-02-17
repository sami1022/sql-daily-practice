-- CASE categorization
SELECT 
    name,
    CASE 
        WHEN marks >= 75 THEN 'High'
        WHEN marks >= 50 THEN 'Medium'
        ELSE 'Low'
    END AS performance
FROM students;

-- Conditional aggregation
SELECT 
    SUM(CASE WHEN amount >= 10000 THEN amount ELSE 0 END) AS high_sales,
    SUM(CASE WHEN amount < 10000 THEN amount ELSE 0 END) AS other_sales
FROM sales;

-- NULL handling using COALESCE
SELECT 
    name,
    COALESCE(bonus, 0) AS bonus_amount
FROM employees;

-- NULL filtering
SELECT *
FROM employees
WHERE department IS NULL;

-- Business logic query
SELECT 
    c.customer_id,
    SUM(o.amount) AS total_revenue,
    CASE 
        WHEN SUM(o.amount) >= 50000 THEN 'Premium'
        ELSE 'Regular'
    END AS customer_type
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id;
