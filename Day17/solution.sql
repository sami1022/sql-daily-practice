-- 1. Create table with NOT NULL and UNIQUE constraints
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL,
    age INT NOT NULL,
    city VARCHAR(50)
);

-- 2. Insert valid records
INSERT INTO users (user_id, email, username, age, city)
VALUES
(1, 'amit@gmail.com', 'amit01', 22, 'Pune'),
(2, 'riya@gmail.com', 'riya02', 24, 'Mumbai');

-- 3. Attempt to insert duplicate email (will fail)
INSERT INTO users (user_id, email, username, age, city)
VALUES (3, 'amit@gmail.com', 'amit03', 25, 'Delhi');

-- 4. Attempt to insert NULL into NOT NULL column (will fail)
INSERT INTO users (user_id, email, username, age, city)
VALUES (4, NULL, 'neha04', 23, 'Bangalore');
