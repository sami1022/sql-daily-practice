-- 1. Function to check sufficient balance
CREATE OR REPLACE FUNCTION is_sufficient(acc_id INT, amt DECIMAL)
RETURNS BOOLEAN AS $$
    SELECT balance >= amt
    FROM accounts
    WHERE account_id = acc_id;
$$ LANGUAGE SQL;

-- 2. Stored procedure for money transfer
CREATE OR REPLACE PROCEDURE transfer_money(from_acc INT, to_acc INT, amt DECIMAL)
LANGUAGE plpgsql
AS $$
BEGIN
    IF NOT is_sufficient(from_acc, amt) THEN
        RAISE EXCEPTION 'Insufficient balance';
    END IF;

    UPDATE accounts
    SET balance = balance - amt
    WHERE account_id = from_acc;

    UPDATE accounts
    SET balance = balance + amt
    WHERE account_id = to_acc;
END;
$$;

-- Call procedure
CALL transfer_money(1, 2, 500);

-- 3. Trigger function to log transactions
CREATE OR REPLACE FUNCTION log_transaction()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO transactions(account_id, amount, transaction_date)
    VALUES (NEW.account_id, NEW.balance, CURRENT_DATE);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- 4. Trigger on UPDATE
CREATE TRIGGER after_update_transaction
AFTER UPDATE ON accounts
FOR EACH ROW
EXECUTE FUNCTION log_transaction();

-- 5. Example update to trigger logging
UPDATE accounts
SET balance = balance + 100
WHERE account_id = 1;
