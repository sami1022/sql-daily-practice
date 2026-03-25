-- 1. Procedure to retrieve all accounts
CREATE OR REPLACE PROCEDURE get_all_accounts()
LANGUAGE SQL
AS $$
    SELECT * FROM accounts;
$$;

-- Call procedure
CALL get_all_accounts();

-- 2. Procedure with input parameter
CREATE OR REPLACE PROCEDURE get_account_by_id(IN acc_id INT)
LANGUAGE SQL
AS $$
    SELECT * FROM accounts
    WHERE account_id = acc_id;
$$;

CALL get_account_by_id(1);

-- 3. Procedure to update balance
CREATE OR REPLACE PROCEDURE update_balance(IN acc_id INT, IN amount DECIMAL)
LANGUAGE SQL
AS $$
    UPDATE accounts
    SET balance = balance + amount
    WHERE account_id = acc_id;
$$;

CALL update_balance(1, 500);

-- 4. Procedure with transaction
CREATE OR REPLACE PROCEDURE transfer_money(IN from_acc INT, IN to_acc INT, IN amt DECIMAL)
LANGUAGE SQL
AS $$
    UPDATE accounts SET balance = balance - amt WHERE account_id = from_acc;
    UPDATE accounts SET balance = balance + amt WHERE account_id = to_acc;
$$;

CALL transfer_money(1, 2, 200);
