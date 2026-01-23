-- 1. All enrollments with student details (if any)
SELECT s.student_id, s.name, e.course
FROM students s
RIGHT JOIN enrollments e
ON s.student_id = e.student_id;

-- 2. Enrollments without matching students
SELECT e.enrollment_id, e.course
FROM students s
RIGHT JOIN enrollments e
ON s.student_id = e.student_id
WHERE s.student_id IS NULL;

-- 3. Course-wise student details including missing students
SELECT e.course, s.name
FROM students s
RIGHT JOIN enrollments e
ON s.student_id = e.student_id;

-- 4. RIGHT JOIN with filtering
SELECT e.course, s.name
FROM students s
RIGHT JOIN enrollments e
ON s.student_id = e.student_id
WHERE e.course = 'SQL';

-- 5. RIGHT JOIN to show all right-table rows
SELECT *
FROM students s
RIGHT JOIN enrollments e
ON s.student_id = e.student_id;
