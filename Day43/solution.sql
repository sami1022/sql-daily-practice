-- 1. Pass or Fail categorization
SELECT 
    name,
    marks,
    CASE 
        WHEN marks >= 40 THEN 'Pass'
        ELSE 'Fail'
    END AS result
FROM students;

-- 2. Assign grades
SELECT 
    name,
    marks,
    CASE 
        WHEN marks >= 90 THEN 'A'
        WHEN marks >= 75 THEN 'B'
        WHEN marks >= 60 THEN 'C'
        WHEN marks >= 40 THEN 'D'
        ELSE 'F'
    END AS grade
FROM students;

-- 3. Performance labels
SELECT 
    name,
    CASE 
        WHEN marks >= 85 THEN 'Excellent'
        WHEN marks >= 70 THEN 'Good'
        WHEN marks >= 50 THEN 'Average'
        ELSE 'Poor'
    END AS performance
FROM students;

-- 4. CASE inside ORDER BY
SELECT name, marks
FROM students
ORDER BY 
    CASE 
        WHEN marks >= 75 THEN 1
        ELSE 2
    END;

-- 5. CASE with multiple conditions
SELECT 
    name,
    city,
    CASE 
        WHEN city = 'Pune' THEN 'Local'
        ELSE 'Non-Local'
    END AS location_type
FROM students;
