-- Basic transaction
BEGIN;

UPDATE accounts
SET balance = balance - 100
WHERE account_id = 1;

UPDATE accounts
SET balance = balance + 100
WHERE account_id = 2;

COMMIT;

-- Transaction with rollback
BEGIN;

UPDATE accounts
SET balance = balance - 200
WHERE account_id = 3;

-- Error occurs
ROLLBACK;

-- Transaction with locking
BEGIN;

SELECT * FROM accounts
WHERE account_id = 4
FOR UPDATE;

UPDATE accounts
SET balance = balance - 50
WHERE account_id = 4;

COMMIT;

-- Demonstrating safe operations
BEGIN;

SELECT * FROM accounts
WHERE account_id = 5
FOR UPDATE;

UPDATE accounts
SET balance = balance + 300
WHERE account_id = 5;

COMMIT;
