## Day 24 – RIGHT JOIN (Reverse Join)

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

1. Retrieve all enrollments along with student details (if available)
2. Display enrollments that are not linked to any student
3. Retrieve course-wise student information including missing students
4. Compare RIGHT JOIN behavior with LEFT JOIN
5. Understand how RIGHT JOIN handles unmatched rows

Focus on understanding reverse joining logic.
