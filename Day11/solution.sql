-- 1. Cities with average marks greater than 70
SELECT city, AVG(marks) AS avg_marks
FROM students
GROUP BY city
HAVING AVG(marks) > 70;

-- 2. Cities having more than 5 students
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city
HAVING COUNT(*) > 5;

-- 3. Ages where average marks are less than 60
SELECT age, AVG(marks) AS avg_marks
FROM students
GROUP BY age
HAVING AVG(marks) < 60;

-- 4. Cities with maximum marks greater than 90
SELECT city, MAX(marks) AS max_marks
FROM students
GROUP BY city
HAVING MAX(marks) > 90;

-- 5. Cities where total marks exceed 500
SELECT city, SUM(marks) AS total_marks
FROM students
GROUP BY city
HAVING SUM(marks) > 500;

-- 6. Cities where minimum marks are less than 40
SELECT city, MIN(marks) AS min_marks
FROM students
GROUP BY city
HAVING MIN(marks) < 40;
