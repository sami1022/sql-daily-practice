-- 1. Students enrolled in a specific course
SELECT s.name, e.course
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id
WHERE e.course = 'SQL';

-- 2. Students from a specific city who are enrolled
SELECT s.name, s.city, e.course
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id
WHERE s.city = 'Pune';

-- 3. Valid enrollments only (students with enrollments)
SELECT s.student_id, s.name, e.course
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id
WHERE e.course IS NOT NULL;

-- 4. Students enrolled in more than one course
SELECT s.student_id, s.name, COUNT(e.course) AS course_count
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id
GROUP BY s.student_id, s.name
HAVING COUNT(e.course) > 1;

-- 5. JOIN + WHERE with multiple conditions
SELECT s.name, e.course
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id
WHERE s.city = 'Mumbai'
  AND e.course = 'Python';
