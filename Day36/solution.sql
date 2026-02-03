-- 1. Convert employee names to uppercase
SELECT UPPER(name) AS upper_name
FROM employees;

-- 2. Convert employee cities to lowercase
SELECT LOWER(city) AS lower_city
FROM employees;

-- 3. Names in uppercase and cities in lowercase
SELECT 
    UPPER(name) AS upper_name,
    LOWER(city) AS lower_city
FROM employees;

-- 4. Standardize department names
SELECT 
    employee_id,
    UPPER(department) AS standardized_department
FROM employees;

-- 5. Using string functions with WHERE
SELECT name, email
FROM employees
WHERE LOWER(city) = 'pune';
