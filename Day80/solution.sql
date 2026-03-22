-- 1. Safe money transfer using transaction
BEGIN;

SELECT * FROM accounts
WHERE account_id = 1
FOR UPDATE;

UPDATE accounts
SET balance = balance - 500
WHERE account_id = 1;

UPDATE accounts
SET balance = balance + 500
WHERE account_id = 2;

COMMIT;

-- 2. Transaction with rollback (error scenario)
BEGIN;

UPDATE accounts
SET balance = balance - 1000
WHERE account_id = 3;

-- Suppose validation fails
ROLLBACK;

-- 3. Demonstrating ACID (conceptual flow)
BEGIN;

UPDATE accounts
SET balance = balance - 200
WHERE account_id = 4;

UPDATE accounts
SET balance = balance + 200
WHERE account_id = 5;

COMMIT;

-- 4. Explicit locking example
BEGIN;

SELECT * FROM accounts
WHERE account_id = 6
FOR UPDATE;

UPDATE accounts
SET balance = balance - 300
WHERE account_id = 6;

COMMIT;

-- 5. Prevent concurrent modification
BEGIN;

SELECT * FROM accounts
WHERE account_id = 7
FOR UPDATE;

UPDATE accounts
SET balance = balance - 150
WHERE account_id = 7;

COMMIT;
