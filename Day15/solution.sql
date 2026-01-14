-- 1. Create table with PRIMARY KEY
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

-- 2. Insert valid records
INSERT INTO students (student_id, name, age, city)
VALUES
(1, 'Amit', 20, 'Pune'),
(2, 'Riya', 22, 'Mumbai');

-- 3. Attempt to insert duplicate PRIMARY KEY (will fail)
INSERT INTO students (student_id, name, age, city)
VALUES (1, 'Rahul', 21, 'Delhi');

-- 4. Attempt to insert NULL into PRIMARY KEY (will fail)
INSERT INTO students (student_id, name, age, city)
VALUES (NULL, 'Neha', 23, 'Bangalore');
