## Day 45 – COALESCE / IF (NULL Handling)

### Problem Statement

You are given a table `employees` with the following columns:

- employee_id (INT)
- name (VARCHAR)
- email (VARCHAR)
- bonus (DECIMAL)
- department (VARCHAR)

Some employees may have NULL values in the bonus column.

Write SQL queries to:

1. Replace NULL bonus values with 0
2. Display a default department name if department is NULL
3. Calculate total salary including bonus (handling NULL bonus)
4. Use COALESCE with multiple fallback values
5. Understand how NULL handling works in SQL

Focus on handling NULL values using COALESCE and IF.
