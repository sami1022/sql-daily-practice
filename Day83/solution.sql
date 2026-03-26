-- 1. Function to get account balance
CREATE OR REPLACE FUNCTION get_balance(acc_id INT)
RETURNS DECIMAL AS $$
    SELECT balance
    FROM accounts
    WHERE account_id = acc_id;
$$ LANGUAGE SQL;

-- Call function
SELECT get_balance(1);

-- 2. Function to calculate total balance
CREATE OR REPLACE FUNCTION total_balance()
RETURNS DECIMAL AS $$
    SELECT SUM(balance) FROM accounts;
$$ LANGUAGE SQL;

SELECT total_balance();

-- 3. Function to check sufficient balance
CREATE OR REPLACE FUNCTION is_sufficient(acc_id INT, amount DECIMAL)
RETURNS BOOLEAN AS $$
    SELECT balance >= amount
    FROM accounts
    WHERE account_id = acc_id;
$$ LANGUAGE SQL;

SELECT is_sufficient(1, 500);

-- 4. Function with parameter usage
CREATE OR REPLACE FUNCTION add_bonus(acc_id INT, bonus DECIMAL)
RETURNS DECIMAL AS $$
    SELECT balance + bonus
    FROM accounts
    WHERE account_id = acc_id;
$$ LANGUAGE SQL;

SELECT add_bonus(1, 100);

-- 5. Use function in SELECT query
SELECT account_id, account_name, get_balance(account_id)
FROM accounts;
