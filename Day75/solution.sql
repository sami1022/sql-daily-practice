-- Basic CTE example
WITH customer_totals AS (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM orders
    GROUP BY customer_id
)
SELECT *
FROM customer_totals;

-- Multiple CTEs
WITH customer_totals AS (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM orders
    GROUP BY customer_id
),
average_spending AS (
    SELECT AVG(total_spent) AS avg_value
    FROM customer_totals
)
SELECT *
FROM customer_totals
WHERE total_spent > (SELECT avg_value FROM average_spending);

-- CTE with ranking
WITH customer_totals AS (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM orders
    GROUP BY customer_id
)
SELECT customer_id, total_spent,
RANK() OVER(ORDER BY total_spent DESC) AS spending_rank
FROM customer_totals;

-- Recursive CTE example
WITH RECURSIVE employee_tree AS (
    SELECT employee_id, manager_id
    FROM employees
    WHERE manager_id IS NULL

    UNION ALL

    SELECT e.employee_id, e.manager_id
    FROM employees e
    JOIN employee_tree et
    ON e.manager_id = et.employee_id
)
SELECT *
FROM employee_tree;
