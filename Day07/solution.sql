-- Basic SELECT
SELECT * FROM students;

-- WHERE clause with condition
SELECT * FROM students
WHERE marks > 60;

-- Logical operators
SELECT * FROM students
WHERE marks > 70 AND city = 'Pune';

-- DISTINCT values
SELECT DISTINCT city FROM students;

-- ORDER BY sorting
SELECT * FROM students
ORDER BY marks DESC;

-- LIMIT and OFFSET
SELECT * FROM students
ORDER BY marks DESC
LIMIT 5 OFFSET 5;
