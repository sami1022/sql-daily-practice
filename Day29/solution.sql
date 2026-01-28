-- 1. Students scoring more than average marks
SELECT name, marks
FROM students
WHERE marks > (
    SELECT AVG(marks)
    FROM students
);

-- 2. Students with highest marks
SELECT name, marks
FROM students
WHERE marks = (
    SELECT MAX(marks)
    FROM students
);

-- 3. Students from cities where average marks > 70
SELECT name, city, marks
FROM students
WHERE city IN (
    SELECT city
    FROM students
    GROUP BY city
    HAVING AVG(marks) > 70
);

-- 4. Students with minimum marks
SELECT name, marks
FROM students
WHERE marks = (
    SELECT MIN(marks)
    FROM students
);

-- 5. Subquery in WHERE clause
SELECT *
FROM students
WHERE student_id IN (
    SELECT student_id
    FROM students
    WHERE marks > 80
);
