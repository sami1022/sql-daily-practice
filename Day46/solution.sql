-- 1. Employees with NULL bonus
SELECT *
FROM employees
WHERE bonus IS NULL;

-- 2. Employees without email
SELECT name
FROM employees
WHERE email IS NULL;

-- 3. Employees with department assigned
SELECT name, department
FROM employees
WHERE department IS NOT NULL;

-- 4. Employees with both email and bonus missing
SELECT *
FROM employees
WHERE email IS NULL
  AND bonus IS NULL;

-- 5. Employees with missing bonus but assigned department
SELECT name
FROM employees
WHERE bonus IS NULL
  AND department IS NOT NULL;
