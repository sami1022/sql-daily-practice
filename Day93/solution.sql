-- Q1. Customers who ordered every product
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(DISTINCT product_id) = (
    SELECT COUNT(*) FROM products
);

-- Q2. Employees with highest salary per department
SELECT e.name, e.departmentId, e.salary
FROM Employee e
WHERE e.salary = (
    SELECT MAX(salary)
    FROM Employee
    WHERE departmentId = e.departmentId
);

-- Q3. Customers with no transactions in last 30 days
SELECT c.customer_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
AND o.order_date >= CURRENT_DATE - INTERVAL '30 days'
WHERE o.customer_id IS NULL;

-- Q4. Products never ordered
SELECT p.product_id
FROM products p
LEFT JOIN orders o
ON p.product_id = o.product_id
WHERE o.product_id IS NULL;

-- Q5. Orders above average amount
SELECT *
FROM orders
WHERE amount > (
    SELECT AVG(amount)
    FROM orders
);
