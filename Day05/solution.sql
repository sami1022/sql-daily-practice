-- 1. Sort students by marks (ascending)
SELECT *
FROM students
ORDER BY marks ASC;

-- 2. Sort students by marks (descending)
SELECT *
FROM students
ORDER BY marks DESC;

-- 3. Sort students by city alphabetically
SELECT *
FROM students
ORDER BY city ASC;

-- 4. Sort by marks DESC and age ASC
SELECT *
FROM students
ORDER BY marks DESC, age ASC;

-- 5. Students with marks > 60 sorted by marks
SELECT *
FROM students
WHERE marks > 60
ORDER BY marks DESC;

-- 6. Distinct cities sorted alphabetically
SELECT DISTINCT city
FROM students
ORDER BY city ASC;
