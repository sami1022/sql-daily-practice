-- 1. Students with their course names
SELECT s.name, c.course_name
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id
INNER JOIN courses c
ON e.course_id = c.course_id;

-- 2. City-wise students with course names
SELECT s.city, s.name, c.course_name
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id
INNER JOIN courses c
ON e.course_id = c.course_id;

-- 3. Students enrolled in a specific course
SELECT s.name, c.course_name
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id
INNER JOIN courses c
ON e.course_id = c.course_id
WHERE c.course_name = 'SQL';

-- 4. Students enrolled in more than one course
SELECT s.student_id, s.name, COUNT(c.course_id) AS course_count
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id
INNER JOIN courses c
ON e.course_id = c.course_id
GROUP BY s.student_id, s.name
HAVING COUNT(c.course_id) > 1;

-- 5. Complete multi-table join
SELECT *
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id
INNER JOIN courses c
ON e.course_id = c.course_id;
