-- 1. Start transaction and rollback
BEGIN;

UPDATE accounts
SET balance = balance - 500
WHERE account_id = 1;

UPDATE accounts
SET balance = balance + 500
WHERE account_id = 2;

-- Suppose error occurs
ROLLBACK;

-- 2. Transaction with manual decision
BEGIN;

UPDATE accounts
SET balance = balance - 300
WHERE account_id = 3;

UPDATE accounts
SET balance = balance + 300
WHERE account_id = 4;

-- Decide to cancel changes
ROLLBACK;

-- 3. Example of commit vs rollback
BEGIN;

UPDATE accounts
SET balance = balance - 200
WHERE account_id = 5;

UPDATE accounts
SET balance = balance + 200
WHERE account_id = 6;

-- Either commit or rollback
-- COMMIT;
ROLLBACK;
