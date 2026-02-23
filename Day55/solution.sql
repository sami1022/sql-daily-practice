-- 1. Optimized user transactions (indexed column)
SELECT transaction_id, transaction_date, amount
FROM transactions
WHERE user_id = 101;

-- 2. Date range filtering (index-friendly)
SELECT *
FROM transactions
WHERE transaction_date >= '2024-01-01'
  AND transaction_date < '2025-01-01';

-- 3. Avoid function on indexed column
-- Not recommended:
-- WHERE YEAR(transaction_date) = 2024

-- Recommended:
SELECT *
FROM transactions
WHERE transaction_date BETWEEN '2024-01-01' AND '2024-12-31';

-- 4. Top spending users
SELECT user_id, SUM(amount) AS total_spent
FROM transactions
GROUP BY user_id
ORDER BY total_spent DESC
LIMIT 5;

-- 5. Analyze query plan
EXPLAIN
SELECT *
FROM transactions
WHERE user_id = 101;
