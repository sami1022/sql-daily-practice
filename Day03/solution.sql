-- 1. Marks > 70 AND age > 18
    SELECT *
    FROM students
    WHERE marks > 70
      AND age > 18;

-- 2. Students from Pune OR Mumbai
    SELECT *
    FROM students
    WHERE city = 'Pune'
       OR city = 'Mumbai';

-- 3. Students NOT from Delhi
SELECT *
FROM students
WHERE city <> 'Delhi';

-- 4. Marks > 80 AND NOT from Mumbai
SELECT *
FROM students
WHERE marks > 80
  AND city <> 'Mumbai';

-- 5. Age < 18 OR marks < 40
SELECT *
FROM students
WHERE age < 18
   OR marks < 40;

-- 6. Marks > 60 AND age between 18 and 25
SELECT *
FROM students
WHERE marks > 60
  AND age BETWEEN 18 AND 25;

-- 7. NOT from Pune AND marks < 50
SELECT *
FROM students
WHERE city <> 'Pune'
  AND marks < 50;

-- 8. Pune students with marks > 75 OR any student with marks > 90
SELECT *
FROM students
WHERE (city = 'Pune' AND marks > 75)
   OR marks > 90;

-- 9. Age > 18 AND (marks > 70 OR city = 'Pune')
SELECT *
FROM students
WHERE age > 18
  AND (marks > 70 OR city = 'Pune');

-- 10. Exclude Delhi students with marks < 40
SELECT *
FROM students
WHERE NOT (city = 'Delhi' AND marks < 40);
