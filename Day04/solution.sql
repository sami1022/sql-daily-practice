-- 1. Get all unique cities
SELECT DISTINCT city
FROM students;

-- 2. Get distinct courses
SELECT DISTINCT course
FROM students;

-- 3. Get distinct combinations of city and course
SELECT DISTINCT city, course
FROM students;

-- 4. Count number of distinct cities
SELECT COUNT(DISTINCT city) AS total_unique_cities
FROM students;

-- 5. Get unique marks in descending order
SELECT DISTINCT marks
FROM students
ORDER BY marks DESC;

-- 6. Distinct cities where marks > 70
SELECT DISTINCT city
FROM students
WHERE marks > 70;
