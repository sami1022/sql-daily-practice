## Day 52 – Index Usage & Performance

### Problem Statement

You are given a table `orders` with the following columns:

- order_id (INT)
- customer_id (INT)
- order_date (DATE)
- amount (DECIMAL)
- status (VARCHAR)

Assume indexes exist on:
- customer_id
- (customer_id, order_date)

Write SQL queries to:

1. Check query performance using EXPLAIN
2. Compare query with and without index usage
3. Filter using indexed columns
4. Filter using non-indexed columns
5. Understand how composite indexes work

Focus on index behavior and performance.
