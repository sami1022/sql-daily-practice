-- 1. Create table with composite PRIMARY KEY
CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    PRIMARY KEY (student_id, course_id)
);

-- 2. Insert valid records
INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES
(1, 101, '2025-01-01'),
(1, 102, '2025-01-02'),
(2, 101, '2025-01-03');

-- 3. Attempt to insert duplicate composite key (will fail)
INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES (1, 101, '2025-01-10');
