-- 1. Total spending per customer
WITH customer_totals AS (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM orders
    GROUP BY customer_id
)
SELECT *
FROM customer_totals;

-- 2. Top 3 customers by spending
WITH customer_totals AS (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM orders
    GROUP BY customer_id
)
SELECT *
FROM customer_totals
ORDER BY total_spent DESC
LIMIT 3;

-- 3. Customers spending above average
WITH customer_totals AS (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM orders
    GROUP BY customer_id
),
avg_spending AS (
    SELECT AVG(total_spent) AS avg_value
    FROM customer_totals
)
SELECT *
FROM customer_totals
WHERE total_spent > (SELECT avg_value FROM avg_spending);

-- 4. Running total per customer
WITH ordered_data AS (
    SELECT customer_id, amount, order_date
    FROM orders
)
SELECT customer_id, order_date, amount,
SUM(amount) OVER(PARTITION BY customer_id ORDER BY order_date) AS running_total
FROM ordered_data;

-- 5. Ranking customers by spending
WITH customer_totals AS (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM orders
    GROUP BY customer_id
)
SELECT customer_id, total_spent,
RANK() OVER(ORDER BY total_spent DESC) AS spending_rank
FROM customer_totals;
