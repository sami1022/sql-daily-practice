-- Q1. Third highest salary
SELECT MAX(salary) AS ThirdHighestSalary
FROM Employee
WHERE salary < (
    SELECT MAX(salary)
    FROM Employee
    WHERE salary < (
        SELECT MAX(salary)
        FROM Employee
    )
);

-- Q2. Inactive customers (last 30 days)
SELECT c.customer_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
AND o.order_date >= CURRENT_DATE - INTERVAL '30 days'
WHERE o.customer_id IS NULL;

-- Q3. Running total per customer
SELECT customer_id, order_date,
SUM(amount) OVER (PARTITION BY customer_id ORDER BY order_date) AS running_total
FROM orders;

-- Q4. Most frequent product per customer
SELECT *
FROM (
    SELECT customer_id, product_id,
    COUNT(*) AS cnt,
    RANK() OVER (PARTITION BY customer_id ORDER BY COUNT(*) DESC) AS rnk
    FROM orders
    GROUP BY customer_id, product_id
) t
WHERE rnk = 1;

-- Q5. Duplicate emails
SELECT email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1;

-- Q6. Monthly growth rate
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

-- Q7. Top 2 customers per month
SELECT *
FROM (
    SELECT DATE_TRUNC('month', order_date) AS month,
    customer_id,
    SUM(amount) AS revenue,
    RANK() OVER (PARTITION BY DATE_TRUNC('month', order_date) ORDER BY SUM(amount) DESC) AS rnk
    FROM orders
    GROUP BY month, customer_id
) t
WHERE rnk <= 2;

-- Q8. Employees above department average
SELECT e.name, e.salary, e.departmentId
FROM Employee e
WHERE e.salary > (
    SELECT AVG(salary)
    FROM Employee
    WHERE departmentId = e.departmentId
);
