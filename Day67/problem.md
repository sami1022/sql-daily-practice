## Day 67 – PARTITION BY (Window Groups)

### Problem Statement

You are given a table **sales**:

- sale_id (INT)
- employee_id (INT)
- region (VARCHAR)
- amount (DECIMAL)
- sale_date (DATE)

Write SQL queries to:

1. Calculate total sales per region without collapsing rows
2. Calculate average sales per employee
3. Rank employees within each region
4. Find the highest sale per region
5. Compare each sale with region average

Focus on understanding PARTITION BY in window functions.
