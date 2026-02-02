-- 1. Students scoring above average (basic subquery)
SELECT name, marks
FROM students
WHERE marks > (
    SELECT AVG(marks)
    FROM students
);

-- 2. Students enrolled in SQL course (IN subquery)
SELECT name
FROM students
WHERE student_id IN (
    SELECT student_id
    FROM enrollments
    WHERE course = 'SQL'
);

-- 3. Students with at least one enrollment (EXISTS)
SELECT s.name
FROM students s
WHERE EXISTS (
    SELECT 1
    FROM enrollments e
    WHERE e.student_id = s.student_id
);

-- 4. Student details with average marks (scalar subquery)
SELECT 
    name,
    marks,
    (SELECT AVG(marks) FROM students) AS avg_marks
FROM students;

-- 5. Students scoring above city average (correlated subquery)
SELECT s1.name, s1.city, s1.marks
FROM students s1
WHERE s1.marks > (
    SELECT AVG(s2.marks)
    FROM students s2
    WHERE s2.city = s1.city
);
