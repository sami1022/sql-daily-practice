-- Q1. Customers Who Never Order
SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.customerId IS NULL;

-- Q2. Second Highest Salary
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);

-- Q3. Duplicate Emails
SELECT email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1;

-- Q4. Top 3 Customers by Revenue
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 3;

-- Q5. Daily Active Users
SELECT activity_date, COUNT(DISTINCT user_id) AS dau
FROM user_activity
GROUP BY activity_date
ORDER BY activity_date;
