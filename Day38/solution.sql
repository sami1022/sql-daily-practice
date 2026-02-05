-- 1. Names starting with 'A'
SELECT name
FROM employees
WHERE name LIKE 'A%';

-- 2. Names ending with 'n'
SELECT name
FROM employees
WHERE name LIKE '%n';

-- 3. Names containing 'ar'
SELECT name
FROM employees
WHERE name LIKE '%ar%';

-- 4. Names with exactly 5 characters
SELECT name
FROM employees
WHERE name LIKE '_____';

-- 5. Emails from gmail domain
SELECT name, email
FROM employees
WHERE email LIKE '%@gmail.com';
