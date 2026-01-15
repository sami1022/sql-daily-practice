-- 1. Create parent table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

-- 2. Create child table with FOREIGN KEY
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- 3. Insert valid records
INSERT INTO students (student_id, name, city)
VALUES
(1, 'Amit', 'Pune'),
(2, 'Riya', 'Mumbai');

INSERT INTO enrollments (enrollment_id, student_id, course)
VALUES
(101, 1, 'SQL'),
(102, 2, 'Python');

-- 4. Attempt to insert invalid FOREIGN KEY (will fail)
INSERT INTO enrollments (enrollment_id, student_id, course)
VALUES (103, 5, 'Data Science');
