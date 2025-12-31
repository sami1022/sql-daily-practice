-- Day 1: SELECT and WHERE practice

-- Select all columns
SELECT * 
FROM employees;

-- Select specific columns
SELECT name, department, salary
FROM employees;

-- Filter employees with salary greater than 50000
SELECT name, salary
FROM employees
WHERE salary > 50000;

-- Employees from IT department
SELECT *
FROM employees
WHERE department = 'IT';

-- Employees hired after 2022
SELECT *
FROM employees
WHERE hire_date > '2022-01-01';
