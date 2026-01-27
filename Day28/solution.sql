-- INNER JOIN
SELECT s.name, e.course
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id;

-- LEFT JOIN (students without enrollments)
SELECT s.name
FROM students s
LEFT JOIN enrollments e
ON s.student_id = e.student_id
WHERE e.student_id IS NULL;

-- RIGHT JOIN (enrollments without students)
SELECT e.course
FROM students s
RIGHT JOIN enrollments e
ON s.student_id = e.student_id
WHERE s.student_id IS NULL;

-- FULL JOIN (all records)
SELECT s.name, e.course
FROM students s
FULL JOIN enrollments e
ON s.student_id = e.student_id;

-- JOIN + WHERE
SELECT s.name, e.course
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id
WHERE e.course = 'SQL';

-- Multi-table JOIN
SELECT s.name, c.course_name
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id
INNER JOIN courses c
ON e.course_id = c.course_id;
