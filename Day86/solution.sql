-- Function example
CREATE OR REPLACE FUNCTION get_balance(acc_id INT)
RETURNS DECIMAL AS $$
    SELECT balance
    FROM accounts
    WHERE account_id = acc_id;
$$ LANGUAGE SQL;

-- Stored procedure example
CREATE OR REPLACE PROCEDURE transfer_money(from_acc INT, to_acc INT, amt DECIMAL)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE accounts
    SET balance = balance - amt
    WHERE account_id = from_acc;

    UPDATE accounts
    SET balance = balance + amt
    WHERE account_id = to_acc;
END;
$$;

-- Trigger function
CREATE OR REPLACE FUNCTION log_update()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO transactions(account_id, amount, transaction_date)
    VALUES (NEW.account_id, NEW.balance, CURRENT_DATE);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger
CREATE TRIGGER after_account_update
AFTER UPDATE ON accounts
FOR EACH ROW
EXECUTE FUNCTION log_update();

-- Using function
SELECT get_balance(1);

-- Calling procedure
CALL transfer_money(1, 2, 100);

-- Trigger execution example
UPDATE accounts
SET balance = balance + 50
WHERE account_id = 1;
