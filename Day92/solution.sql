-- Q1. Employees earning more than their manager
SELECT e.name
FROM Employee e
JOIN Employee m
ON e.managerId = m.id
WHERE e.salary > m.salary;

-- Q2. Customers with more than one order
SELECT customerId
FROM Orders
GROUP BY customerId
HAVING COUNT(*) > 1;

-- Q3. Missing IDs
SELECT DISTINCT t1.id + 1 AS missing_id
FROM Customers t1
LEFT JOIN Customers t2
ON t1.id + 1 = t2.id
WHERE t2.id IS NULL;

-- Q4. Highest salary in each department
SELECT departmentId, MAX(salary) AS highest_salary
FROM Employee
GROUP BY departmentId;

-- Q5. Orders per day
SELECT order_date, COUNT(*) AS total_orders
FROM orders
GROUP BY order_date
ORDER BY order_date;
