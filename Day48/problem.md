## Day 48 – Practice (Business Logic Queries)

### Problem Statement

You are given two tables:

**customers**
- customer_id (INT)
- name (VARCHAR)
- city (VARCHAR)
- signup_date (DATE)

**orders**
- order_id (INT)
- customer_id (INT)
- order_date (DATE)
- amount (DECIMAL)

Write SQL queries to:

1. Find total revenue per customer
2. Identify customers who never placed an order
3. Find top 3 customers by total spending
4. Categorize customers into High / Medium / Low spenders
5. Find customers who placed orders in the last 30 days

Focus on real-world business reporting logic.
