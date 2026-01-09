-- 1. Count students in each city
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city;

-- 2. Average marks for each city
SELECT city, AVG(marks) AS average_marks
FROM students
GROUP BY city;

-- 3. Maximum marks in each city
SELECT city, MAX(marks) AS highest_marks
FROM students
GROUP BY city;

-- 4. Minimum age in each city
SELECT city, MIN(age) AS minimum_age
FROM students
GROUP BY city;

-- 5. Count students by age
SELECT age, COUNT(*) AS total_students
FROM students
GROUP BY age;

-- 6. Total marks scored by students from each city
SELECT city, SUM(marks) AS total_marks
FROM students
GROUP BY city;
