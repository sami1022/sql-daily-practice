-- 1. Combine first name and last name
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;

-- 2. Full name with department
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    department
FROM employees;

-- 3. Length of full name
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    LENGTH(CONCAT(first_name, last_name)) AS name_length
FROM employees;

-- 4. Employees with name length greater than 10
SELECT 
    first_name,
    last_name
FROM employees
WHERE LENGTH(CONCAT(first_name, last_name)) > 10;

-- 5. Length of email addresses
SELECT 
    email,
    LENGTH(email) AS email_length
FROM employees;
