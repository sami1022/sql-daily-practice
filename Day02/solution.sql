-- 1. Students with marks greater than 70
SELECT *
FROM students
WHERE marks > 70;

-- 2. Students with marks > 70 AND city is Pune
SELECT *
FROM students
WHERE marks > 70
  AND city = 'Pune';

-- 3. Students with marks > 85 OR city is Mumbai
SELECT *
FROM students
WHERE marks > 85
   OR city = 'Mumbai';
