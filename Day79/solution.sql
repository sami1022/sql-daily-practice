-- Example of locking behavior

BEGIN;

-- Read operation (shared lock)
SELECT * FROM accounts
WHERE account_id = 1;

-- Write operation (exclusive lock)
UPDATE accounts
SET balance = balance - 100
WHERE account_id = 1;

COMMIT;

-- Example of explicit locking (PostgreSQL)

-- Lock row for update
SELECT * FROM accounts
WHERE account_id = 1
FOR UPDATE;

-- Lock row for shared read
SELECT * FROM accounts
WHERE account_id = 1
FOR SHARE;
