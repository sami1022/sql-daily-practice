-- 1. Total spending using subquery
SELECT customer_id, total_spent
FROM (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM orders
    GROUP BY customer_id
) AS customer_totals;

-- 2. Total spending using CTE
WITH customer_totals AS (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM orders
    GROUP BY customer_id
)
SELECT *
FROM customer_totals;

-- 3. Customers above average spending using subquery
SELECT customer_id, total_spent
FROM (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM orders
    GROUP BY customer_id
) t
WHERE total_spent >
(
    SELECT AVG(total_spent)
    FROM (
        SELECT SUM(amount) AS total_spent
        FROM orders
        GROUP BY customer_id
    ) avg_table
);

-- 4. Same problem using CTE
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

-- 5. Ranking customers using CTE
WITH customer_totals AS (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM orders
    GROUP BY customer_id
)
SELECT customer_id, total_spent,
RANK() OVER(ORDER BY total_spent DESC) AS spending_rank
FROM customer_totals;
