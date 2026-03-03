-- 1. Employees present in both 2023 and 2024
SELECT employee_id, name FROM employees_2023
INTERSECT
SELECT employee_id, name FROM employees_2024;

-- 2. New employees in 2024
SELECT employee_id, name FROM employees_2024
EXCEPT
SELECT employee_id, name FROM employees_2023;

-- 3. Employees who resigned
SELECT employee_id, name FROM resigned_employees;

-- 4. Combine all employees (unique)
SELECT employee_id, name FROM employees_2023
UNION
SELECT employee_id, name FROM employees_2024
UNION
SELECT employee_id, name FROM resigned_employees;

-- 5. Active both years but not resigned
SELECT employee_id, name FROM employees_2023
INTERSECT
SELECT employee_id, name FROM employees_2024
EXCEPT
SELECT employee_id, name FROM resigned_employees;
