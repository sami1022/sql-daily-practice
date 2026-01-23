## Day 24 – RIGHT JOIN (Conceptual Explanation)

RIGHT JOIN is used to retrieve all records from the right table
and the matching records from the left table.

If no matching record exists in the left table,
NULL values are returned for the left table columns.

---

### What is RIGHT JOIN?
RIGHT JOIN returns:
- All rows from the right table
- Matching rows from the left table
- NULL values where no match exists in the left table

---

### RIGHT JOIN vs LEFT JOIN
- RIGHT JOIN preserves rows from the right table
- LEFT JOIN preserves rows from the left table
- RIGHT JOIN can be rewritten as LEFT JOIN by swapping tables

---

### How RIGHT JOIN Handles Missing Data
- Ensures all right-table rows are returned
- Inserts NULL for unmatched left-table columns
- Useful when right table data is mandatory

---

### When to Use RIGHT JOIN
- When focus is on the right table
- When all records from right table must be shown
- Less commonly used than LEFT JOIN

---

### Common Mistakes
- Confusing LEFT and RIGHT JOIN
- Writing unnecessary RIGHT JOIN instead of LEFT JOIN
- Forgetting NULL handling
- Incorrect join conditions

---

### Real-World Applications
- Enrollment-centric reporting
- Order-item analysis
- Logs and event tracking
- Data completeness checks

---

### Summary
- RIGHT JOIN preserves right-table rows
- Displays NULLs for unmatched left-table data
- Functionally similar to LEFT JOIN
- Less commonly used but important to understand
- Frequently tested in SQL interviews
