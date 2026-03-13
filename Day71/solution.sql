-- 1. Total spending per customer using CTE
WITH customer_totals AS (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM orders
    GROUP BY customer_id
)
SELECT *
FROM customer_totals;

-- 2. Customers spending above average
WITH customer_totals AS (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM orders
    GROUP BY customer_id
)
SELECT *
FROM customer_totals
WHERE total_spent > (
    SELECT AVG(total_spent) FROM customer_totals
);

-- 3. Rank customers by spending
WITH customer_totals AS (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM orders
    GROUP BY customer_id
)
SELECT customer_id, total_spent,
RANK() OVER(ORDER BY total_spent DESC) AS spending_rank
FROM customer_totals;

-- 4. Multiple CTE example
WITH customer_totals AS (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM orders
    GROUP BY customer_id
),
average_spending AS (
    SELECT AVG(total_spent) AS avg_spent
    FROM customer_totals
)
SELECT *
FROM customer_totals
WHERE total_spent > (SELECT avg_spent FROM average_spending);

-- 5. Using CTE for filtering
WITH large_orders AS (
    SELECT * FROM orders
    WHERE amount > 500
)
SELECT *
FROM large_orders;
