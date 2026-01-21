-- 1. Students with their enrolled courses
SELECT s.student_id, s.name, e.course
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id;

-- 2. Student names and courses (matching records only)
SELECT s.name, e.course
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id;

-- 3. Students enrolled in at least one course
SELECT DISTINCT s.student_id, s.name
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id;

-- 4. City-wise enrolled students
SELECT s.city, s.name, e.course
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id;

-- 5. INNER JOIN with filtering
SELECT s.name, e.course
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id
WHERE s.city = 'Pune';
