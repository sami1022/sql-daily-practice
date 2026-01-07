-- 1. Count total number of students
SELECT COUNT(*) AS total_students
FROM students;

-- 2. Count students from each city
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city;

-- 3. Total marks scored by all students
SELECT SUM(marks) AS total_marks
FROM students;

-- 4. Average marks of all students
SELECT AVG(marks) AS average_marks
FROM students;

-- 5. Average marks of students from each city
SELECT city, AVG(marks) AS average_marks
FROM students
GROUP BY city;

-- 6. Count students who scored more than 60
SELECT COUNT(*) AS students_above_60
FROM students
WHERE marks > 60;
