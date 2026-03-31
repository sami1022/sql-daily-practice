-- 1. AFTER INSERT trigger to log transaction
CREATE OR REPLACE FUNCTION log_transaction()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO transactions (account_id, amount, transaction_date)
    VALUES (NEW.account_id, NEW.balance, CURRENT_DATE);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER after_account_insert
AFTER INSERT ON accounts
FOR EACH ROW
EXECUTE FUNCTION log_transaction();

-- 2. BEFORE UPDATE trigger to prevent negative balance
CREATE OR REPLACE FUNCTION check_balance()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.balance < 0 THEN
        RAISE EXCEPTION 'Balance cannot be negative';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER before_balance_update
BEFORE UPDATE ON accounts
FOR EACH ROW
EXECUTE FUNCTION check_balance();

-- 3. AFTER UPDATE trigger to log updates
CREATE OR REPLACE FUNCTION log_update()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO transactions (account_id, amount, transaction_date)
    VALUES (NEW.account_id, NEW.balance, CURRENT_DATE);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER after_account_update
AFTER UPDATE ON accounts
FOR EACH ROW
EXECUTE FUNCTION log_update();
