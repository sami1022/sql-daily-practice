-- 1. Cities with average marks greater than 75
SELECT city, AVG(marks) AS avg_marks
FROM students
GROUP BY city
HAVING AVG(marks) > 75;

-- 2. Cities with more than 3 students and average marks above 60
SELECT city, COUNT(*) AS total_students, AVG(marks) AS avg_marks
FROM students
GROUP BY city
HAVING COUNT(*) > 3
   AND AVG(marks) > 60;

-- 3. Ages with more than 2 students
SELECT age, COUNT(*) AS total_students
FROM students
GROUP BY age
HAVING COUNT(*) > 2;

-- 4. Cities where total marks are greater than 300
SELECT city, SUM(marks) AS total_marks
FROM students
GROUP BY city
HAVING SUM(marks) > 300;

-- 5. Cities with maximum marks greater than 90
SELECT city, MAX(marks) AS max_marks
FROM students
GROUP BY city
HAVING MAX(marks) > 90;

-- 6. Cities with minimum marks less than 40
SELECT city, MIN(marks) AS min_marks
FROM students
GROUP BY city
HAVING MIN(marks) < 40;
