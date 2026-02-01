## Day 33 – JOIN vs Subquery (Comparison)

### Problem Statement

You are given two tables:

**students**
- student_id (INT)
- name (VARCHAR)
- marks (INT)
- city (VARCHAR)

**enrollments**
- enrollment_id (INT)
- student_id (INT)
- course (VARCHAR)

Write SQL queries to:

1. Retrieve students enrolled in a course using JOIN
2. Retrieve students enrolled in a course using a subquery
3. Find students with marks above average using a subquery
4. Find students with marks above average using JOIN
5. Compare JOIN and subquery approaches

Focus on understanding **when to use JOIN vs subquery**.
