-- 1. Students enrolled in specific courses using IN
SELECT name
FROM students
WHERE student_id IN (
    SELECT student_id
    FROM enrollments
    WHERE course = 'SQL'
);

-- 2. Students not enrolled in any course using NOT IN
SELECT name
FROM students
WHERE student_id NOT IN (
    SELECT student_id
    FROM enrollments
);

-- 3. Students with at least one enrollment using EXISTS
SELECT s.name
FROM students s
WHERE EXISTS (
    SELECT 1
    FROM enrollments e
    WHERE e.student_id = s.student_id
);

-- 4. Students with no enrollments using NOT EXISTS
SELECT s.name
FROM students s
WHERE NOT EXISTS (
    SELECT 1
    FROM enrollments e
    WHERE e.student_id = s.student_id
);

-- 5. Subquery with multiple conditions
SELECT name
FROM students
WHERE student_id IN (
    SELECT student_id
    FROM enrollments
    WHERE course IN ('SQL', 'Python')
);
