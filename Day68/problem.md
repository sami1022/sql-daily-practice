## Day 68 – Window Functions + Aggregates (Running Totals)

### Problem Statement

You are given a table **sales**:

- sale_id (INT)
- employee_id (INT)
- region (VARCHAR)
- amount (DECIMAL)
- sale_date (DATE)

Write SQL queries to:

1. Calculate running total of sales ordered by date
2. Calculate cumulative sales per employee
3. Calculate running average of sales
4. Calculate cumulative sales per region
5. Compare each sale with cumulative total

Focus on cumulative calculations using window functions.
