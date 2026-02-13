-- 1. Replace NULL bonus with 0
SELECT 
    name,
    COALESCE(bonus, 0) AS bonus_amount
FROM employees;

-- 2. Default department if NULL
SELECT 
    name,
    COALESCE(department, 'Not Assigned') AS department_name
FROM employees;

-- 3. Calculate total compensation (assuming salary column exists)
SELECT 
    name,
    salary + COALESCE(bonus, 0) AS total_compensation
FROM employees;

-- 4. Multiple fallback values
SELECT 
    name,
    COALESCE(email, 'no-email@company.com') AS contact_email
FROM employees;

-- 5. Using IF (MySQL style)
SELECT 
    name,
    IF(bonus IS NULL, 0, bonus) AS bonus_amount
FROM employees;
