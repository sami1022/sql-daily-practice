-- Q1. Rank employees by salary per department
SELECT name, departmentId, salary,
RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS rank
FROM Employee;

-- Q2. Top 3 salaries per department
SELECT *
FROM (
    SELECT name, departmentId, salary,
    DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS rnk
    FROM Employee
) t
WHERE rnk <= 3;

-- Q3. Running total of revenue
SELECT order_date,
SUM(amount) OVER (ORDER BY order_date) AS running_total
FROM orders;

-- Q4. Compare current and previous order
SELECT order_id, amount,
LAG(amount) OVER (ORDER BY order_date) AS previous_amount
FROM orders;

-- Q5. Find duplicate records
SELECT *
FROM (
    SELECT *,
    ROW_NUMBER() OVER (PARTITION BY email ORDER BY id) AS rn
    FROM Person
) t
WHERE rn > 1;
