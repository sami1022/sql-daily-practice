-- Example demonstrating ACID properties

BEGIN;

-- Atomicity: Both operations should succeed or fail together
UPDATE accounts
SET balance = balance - 500
WHERE account_id = 1;

UPDATE accounts
SET balance = balance + 500
WHERE account_id = 2;

-- Consistency: Data should remain valid (no negative balance)
-- (Handled via constraints or checks)

-- Isolation: Transaction is isolated from others
-- (Handled by database engine)

-- Durability: Once committed, changes are permanent
COMMIT;
