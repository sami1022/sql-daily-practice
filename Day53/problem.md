## Day 53 – EXPLAIN (Query Execution Plans Deep Dive)

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

Write SQL queries to:

1. Use EXPLAIN on a simple SELECT query
2. Analyze JOIN query execution plan
3. Compare query with and without index
4. Identify full table scan
5. Understand cost and execution strategy

Focus on reading and interpreting EXPLAIN output.
