-- 1. Total number of students
SELECT COUNT(*) AS total_students
FROM students;

-- 2. Students count by city
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city;

-- 3. Average marks of all students
SELECT AVG(marks) AS average_marks
FROM students;

-- 4. Average marks city-wise
SELECT city, AVG(marks) AS average_marks
FROM students
GROUP BY city;

-- 5. Highest marks overall
SELECT MAX(marks) AS highest_marks
FROM students;

-- 6. Lowest marks overall
SELECT MIN(marks) AS lowest_marks
FROM students;

-- 7. Cities with average marks greater than 70
SELECT city, AVG(marks) AS avg_marks
FROM students
GROUP BY city
HAVING AVG(marks) > 70;

-- 8. Cities having more than 3 students
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city
HAVING COUNT(*) > 3;

-- 9. Cities where total marks are greater than 250
SELECT city, SUM(marks) AS total_marks
FROM students
GROUP BY city
HAVING SUM(marks) > 250;

-- 10. Ages with more than 2 students
SELECT age, COUNT(*) AS total_students
FROM students
GROUP BY age
HAVING COUNT(*) > 2;
