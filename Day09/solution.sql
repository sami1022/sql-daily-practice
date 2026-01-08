-- 1. Minimum marks scored
SELECT MIN(marks) AS minimum_marks
FROM students;

-- 2. Maximum marks scored
SELECT MAX(marks) AS maximum_marks
FROM students;

-- 3. Minimum and maximum age
SELECT MIN(age) AS minimum_age,
       MAX(age) AS maximum_age
FROM students;

-- 4. Highest marks in each city
SELECT city, MAX(marks) AS highest_marks
FROM students
GROUP BY city;

-- 5. Lowest marks in each city
SELECT city, MIN(marks) AS lowest_marks
FROM students
GROUP BY city;

-- 6. Maximum marks scored by students older than 18
SELECT MAX(marks) AS max_marks_above_18
FROM students
WHERE age > 18;
