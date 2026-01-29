## Day 30 – Subquery in WHERE (IN, EXISTS)

### Problem Statement

You are given the following tables:

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

1. Find students enrolled in specific courses using IN
2. Find students not enrolled in any course using NOT IN
3. Retrieve students who have at least one enrollment using EXISTS
4. Retrieve students with no enrollments using NOT EXISTS
5. Understand the difference between IN and EXISTS

Focus on using subqueries inside the WHERE clause.
