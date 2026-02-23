## Day 55 – Practice (Optimization Scenarios)

### Problem Statement

You are given two large tables:

**users**
- user_id (INT)
- name (VARCHAR)
- email (VARCHAR)
- signup_date (DATE)
- city (VARCHAR)

**transactions**
- transaction_id (INT)
- user_id (INT)
- transaction_date (DATE)
- amount (DECIMAL)
- status (VARCHAR)

Assume millions of rows exist.

Write optimized SQL queries to:

1. Retrieve transactions for a specific user efficiently
2. Find transactions in a date range using index-friendly filtering
3. Avoid function usage on indexed columns
4. Identify top spending users efficiently
5. Analyze query plan using EXPLAIN

Focus on writing performance-aware SQL.
