-- 1. Students scoring above their city average
SELECT s1.name, s1.city, s1.marks
FROM students s1
WHERE s1.marks > (
    SELECT AVG(s2.marks)
    FROM students s2
    WHERE s2.city = s1.city
);

-- 2. Students with highest marks in their city
SELECT s1.name, s1.city, s1.marks
FROM students s1
WHERE s1.marks = (
    SELECT MAX(s2.marks)
    FROM students s2
    WHERE s2.city = s1.city
);

-- 3. Students whose marks are greater than another student in same city
SELECT DISTINCT s1.name, s1.city, s1.marks
FROM students s1
WHERE s1.marks > (
    SELECT MIN(s2.marks)
    FROM students s2
    WHERE s2.city = s1.city
);

-- 4. Students with city-wise maximum marks
SELECT name, city, marks
FROM students s1
WHERE marks = (
    SELECT MAX(marks)
    FROM students s2
    WHERE s2.city = s1.city
);

-- 5. Correlated subquery using EXISTS
SELECT s1.name, s1.city
FROM students s1
WHERE EXISTS (
    SELECT 1
    FROM students s2
    WHERE s2.city = s1.city
      AND s2.marks > s1.marks
);
