## Day 54 – Query Optimization (Best Practices)

### Problem Statement

You are given two tables:

**customers**
- customer_id (INT)
- name (VARCHAR)
- city (VARCHAR)

**orders**
- order_id (INT)
- customer_id (INT)
- order_date (DATE)
- amount (DECIMAL)
- status (VARCHAR)

Write optimized SQL queries to:

1. Retrieve customer orders without using SELECT *
2. Optimize filtering conditions
3. Avoid functions on indexed columns
4. Replace subquery with JOIN (if possible)
5. Improve aggregation performance

Focus on best practices for writing optimized SQL.
