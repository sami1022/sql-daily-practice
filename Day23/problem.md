## Day 23 – LEFT JOIN (Missing Data)

### Problem Statement

You are given two tables:

**students**
- student_id (INT)
- name (VARCHAR)
- city (VARCHAR)

**enrollments**
- enrollment_id (INT)
- student_id (INT)
- course (VARCHAR)

Write SQL queries to:

1. Retrieve all students along with their enrolled courses (if any)
2. Display students who have not enrolled in any course
3. Retrieve student names and courses, including students with no enrollments
4. Find city-wise students including those without enrollments
5. Understand how LEFT JOIN handles missing data

Focus on handling NULLs and missing matches using LEFT JOIN.
