-- 1. Create table with CHECK and DEFAULT constraints
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18),
    salary DECIMAL(10,2) CHECK (salary > 0),
    status VARCHAR(20) DEFAULT 'Active',
    city VARCHAR(50) DEFAULT 'Unknown'
);

-- 2. Insert valid records (using DEFAULT values)
INSERT INTO employees (employee_id, name, age, salary)
VALUES
(1, 'Amit', 25, 45000),
(2, 'Riya', 30, 60000);

-- 3. Insert record with explicit DEFAULT
INSERT INTO employees (employee_id, name, age, salary, status)
VALUES (3, 'Neha', 28, 52000, DEFAULT);

-- 4. Attempt to insert invalid age (will fail)
INSERT INTO employees (employee_id, name, age, salary)
VALUES (4, 'Rahul', 16, 30000);

-- 5. Attempt to insert invalid salary (will fail)
INSERT INTO employees (employee_id, name, age, salary)
VALUES (5, 'Sonal', 26, -5000);
