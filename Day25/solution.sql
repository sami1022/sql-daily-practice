-- 1. All students and all enrollments
SELECT s.student_id, s.name, e.course
FROM students s
FULL JOIN enrollments e
ON s.student_id = e.student_id;

-- 2. Records with no match on either side
SELECT s.student_id, s.name, e.course
FROM students s
FULL JOIN enrollments e
ON s.student_id = e.student_id
WHERE s.student_id IS NULL
   OR e.student_id IS NULL;

-- 3. Students without enrollments
SELECT s.student_id, s.name
FROM students s
FULL JOIN enrollments e
ON s.student_id = e.student_id
WHERE e.student_id IS NULL;

-- 4. Enrollments without students
SELECT e.enrollment_id, e.course
FROM students s
FULL JOIN enrollments e
ON s.student_id = e.student_id
WHERE s.student_id IS NULL;

-- 5. Complete join result
SELECT *
FROM students s
FULL JOIN enrollments e
ON s.student_id = e.student_id;
