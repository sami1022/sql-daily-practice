-- 1. Top 5 students based on marks
SELECT *
FROM students
ORDER BY marks DESC
LIMIT 5;

-- 2. Bottom 5 students based on marks
SELECT *
FROM students
ORDER BY marks ASC
LIMIT 5;

-- 3. Top 3 students from Pune based on marks
SELECT *
FROM students
WHERE city = 'Pune'
ORDER BY marks DESC
LIMIT 3;

-- 4. Students ranked from 6 to 10 based on marks
SELECT *
FROM students
ORDER BY marks DESC
LIMIT 5 OFFSET 5;

-- 5. First 10 students sorted by age
SELECT *
FROM students
ORDER BY age ASC
LIMIT 10;

-- 6. Next 5 students after skipping first 10
SELECT *
FROM students
ORDER BY age ASC
LIMIT 5 OFFSET 10;
