-- 1. All students with their courses (if any)
SELECT s.student_id, s.name, e.course
FROM students s
LEFT JOIN enrollments e
ON s.student_id = e.student_id;

-- 2. Students who have not enrolled in any course
SELECT s.student_id, s.name
FROM students s
LEFT JOIN enrollments e
ON s.student_id = e.student_id
WHERE e.student_id IS NULL;

-- 3. Student names and courses including non-enrolled students
SELECT s.name, e.course
FROM students s
LEFT JOIN enrollments e
ON s.student_id = e.student_id;

-- 4. City-wise students including those without enrollments
SELECT s.city, s.name, e.course
FROM students s
LEFT JOIN enrollments e
ON s.student_id = e.student_id;

-- 5. LEFT JOIN with filtering on left table
SELECT s.name, e.course
FROM students s
LEFT JOIN enrollments e
ON s.student_id = e.student_id
WHERE s.city = 'Pune';
