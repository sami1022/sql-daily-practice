-- 1. Student details with overall average marks
SELECT 
    name,
    marks,
    (SELECT AVG(marks) FROM students) AS average_marks
FROM students;

-- 2. Student details with maximum marks
SELECT 
    name,
    marks,
    (SELECT MAX(marks) FROM students) AS max_marks
FROM students;

-- 3. Difference between student marks and average marks
SELECT 
    name,
    marks,
    marks - (SELECT AVG(marks) FROM students) AS diff_from_avg
FROM students;

-- 4. Student details with minimum marks
SELECT 
    name,
    marks,
    (SELECT MIN(marks) FROM students) AS min_marks
FROM students;

-- 5. Scalar subquery with additional column
SELECT 
    name,
    city,
    (SELECT COUNT(*) FROM students) AS total_students
FROM students;
