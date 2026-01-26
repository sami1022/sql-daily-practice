## Day 27 – Multi-table JOIN (3+ Tables)

### Problem Statement

You are given three tables:

**students**
- student_id (INT)
- name (VARCHAR)
- city (VARCHAR)

**enrollments**
- enrollment_id (INT)
- student_id (INT)
- course_id (INT)

**courses**
- course_id (INT)
- course_name (VARCHAR)

Write SQL queries to:

1. Retrieve student names with their enrolled course names
2. Display city-wise students along with course names
3. Find students enrolled in a specific course
4. Retrieve students who are enrolled in multiple courses
5. Understand how joining 3 or more tables works

Focus on chaining JOINs correctly using relationships.
