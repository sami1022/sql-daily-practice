-- 1. Using JOIN: students enrolled in SQL
SELECT s.name, e.course
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id
WHERE e.course = 'SQL';

-- 2. Using Subquery: students enrolled in SQL
SELECT name
FROM students
WHERE student_id IN (
    SELECT student_id
    FROM enrollments
    WHERE course = 'SQL'
);

-- 3. Subquery: students with marks above average
SELECT name, marks
FROM students
WHERE marks > (
    SELECT AVG(marks)
    FROM students
);

-- 4. JOIN: students with marks above average
SELECT s.name, s.marks
FROM students s
CROSS JOIN (
    SELECT AVG(marks) AS avg_marks
    FROM students
) a
WHERE s.marks > a.avg_marks;

-- 5. EXISTS subquery example
SELECT s.name
FROM students s
WHERE EXISTS (
    SELECT 1
    FROM enrollments e
    WHERE e.student_id = s.student_id
);
