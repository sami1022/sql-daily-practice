-- Basic aggregate functions
SELECT COUNT(*) FROM students;
SELECT SUM(marks) FROM students;
SELECT AVG(marks) FROM students;
SELECT MIN(marks) FROM students;
SELECT MAX(marks) FROM students;

-- GROUP BY with aggregates
SELECT city, COUNT(*) FROM students GROUP BY city;
SELECT city, AVG(marks) FROM students GROUP BY city;

-- GROUP BY + HAVING
SELECT city, AVG(marks)
FROM students
GROUP BY city
HAVING AVG(marks) > 70;

SELECT age, COUNT(*)
FROM students
GROUP BY age
HAVING COUNT(*) > 2;
