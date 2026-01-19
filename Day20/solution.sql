-- 1. Students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT CHECK (age >= 18),
    city VARCHAR(50) DEFAULT 'Unknown'
);

-- 2. Courses table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_code VARCHAR(20) UNIQUE NOT NULL,
    course_name VARCHAR(100) NOT NULL
);

-- 3. Enrollments table with composite PRIMARY KEY
CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    enrollment_date DATE DEFAULT CURRENT_DATE,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- 4. Insert valid data
INSERT INTO students (student_id, name, email, age, city)
VALUES (1, 'Amit', 'amit@gmail.com', 21, 'Pune');

INSERT INTO courses (course_id, course_code, course_name)
VALUES (101, 'SQL101', 'SQL Basics');

INSERT INTO enrollments (student_id, course_id)
VALUES (1, 101);

-- 5. Invalid insert examples (will fail)
-- Duplicate email
INSERT INTO students (student_id, name, email, age)
VALUES (2, 'Riya', 'amit@gmail.com', 22);

-- Invalid age
INSERT INTO students (student_id, name, email, age)
VALUES (3, 'Neha', 'neha@gmail.com', 16);
