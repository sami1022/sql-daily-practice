-- View usage
CREATE VIEW user_summary AS
SELECT user_id, SUM(amount) AS total_spent
FROM transactions
GROUP BY user_id;

-- Create index
CREATE INDEX idx_user_id
ON transactions(user_id);

-- Composite index
CREATE INDEX idx_user_date
ON transactions(user_id, transaction_date);

-- EXPLAIN execution plan
EXPLAIN
SELECT *
FROM transactions
WHERE user_id = 101;

-- Optimized Top-N query
SELECT user_id, SUM(amount) AS total_spent
FROM transactions
GROUP BY user_id
ORDER BY total_spent DESC
LIMIT 5;
