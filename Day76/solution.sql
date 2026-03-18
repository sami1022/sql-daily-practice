-- 1. Start a transaction
BEGIN;

-- Deduct amount from account A
UPDATE accounts
SET balance = balance - 500
WHERE account_id = 1;

-- Add amount to account B
UPDATE accounts
SET balance = balance + 500
WHERE account_id = 2;

-- Commit the transaction
COMMIT;

-- 2. Multiple updates in one transaction
BEGIN;

UPDATE accounts
SET balance = balance - 200
WHERE account_id = 3;

UPDATE accounts
SET balance = balance + 200
WHERE account_id = 4;

COMMIT;

-- 3. Example of safe transaction handling
BEGIN;

UPDATE accounts
SET balance = balance - 100
WHERE account_id = 5;

UPDATE accounts
SET balance = balance + 100
WHERE account_id = 6;

COMMIT;
