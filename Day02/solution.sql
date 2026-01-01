-- 1. Students with marks greater than 70
SELECT *
FROM students
WHERE marks > 70;

-- Select students with marks greater than 60
SELECT *
FROM students
WHERE marks > 60;

--Select students from Pune
SELECT *
FROM students
WHERE city = 'Pune';

--Select students younger than 20
SELECT *
FROM students
WHERE age < 20;


-- 2. Students with marks > 70 AND city is Pune
SELECT *
FROM students
WHERE marks > 70
  AND city = 'Pune';

--Marks > 70 AND city = Pune
SELECT *
FROM students
WHERE marks > 70
  AND city = 'Pune';

--Age > 18 AND marks >= 60
SELECT *
FROM students
WHERE age > 18
  AND marks >= 60;


-- 3. Students with marks > 85 OR city is Mumbai
SELECT *
FROM students
WHERE marks > 85
   OR city = 'Mumbai';

--Marks > 85 OR city = Mumbai
SELECT *
FROM students
WHERE marks > 85
   OR city = 'Mumbai';


--Age < 18 OR marks < 40
SELECT *
FROM students
WHERE age < 18
   OR marks < 40;

--4. WHERE with AND + OR (IMPORTANT)
--Correct use with brackets
SELECT *
FROM students
WHERE (marks > 80 AND city = 'Pune')
   OR city = 'Delhi';



