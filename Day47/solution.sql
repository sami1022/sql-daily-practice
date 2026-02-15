-- 1. Remove extra spaces from names
SELECT 
    customer_id,
    TRIM(name) AS cleaned_name
FROM customers;

-- 2. Standardize city names to uppercase
SELECT 
    customer_id,
    UPPER(TRIM(city)) AS standardized_city
FROM customers;

-- 3. Replace NULL emails with default value
SELECT 
    customer_id,
    COALESCE(email, 'no-email@company.com') AS email_address
FROM customers;

-- 4. Identify invalid phone numbers (less than 10 characters)
SELECT *
FROM customers
WHERE LENGTH(phone) < 10
   OR phone IS NULL;

-- 5. Cleaned dataset preview
SELECT 
    customer_id,
    TRIM(name) AS name,
    COALESCE(email, 'no-email@company.com') AS email,
    UPPER(TRIM(city)) AS city,
    signup_date
FROM customers;
