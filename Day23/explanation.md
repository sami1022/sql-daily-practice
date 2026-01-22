## Day 23 – LEFT JOIN (Conceptual Explanation)

LEFT JOIN is used to retrieve all records from the left table
and the matching records from the right table.

If there is no matching record in the right table,
NULL values are returned for the right table columns.

---

### What is LEFT JOIN?
LEFT JOIN returns:
- All rows from the left table
- Matching rows from the right table
- NULLs where no match exists on the right

---

### How LEFT JOIN Handles Missing Data
- Preserves all rows from the left table
- Inserts NULL for missing right-table values
- Useful for identifying unmatched records

---

### LEFT JOIN vs INNER JOIN
- INNER JOIN returns only matching rows
- LEFT JOIN returns all left table rows
- LEFT JOIN helps find missing relationships

---

### Filtering with LEFT JOIN
- Conditions on left table keep all left rows
- Conditions on right table may remove NULL matches
- IS NULL is commonly used to find missing data

---

### Common Mistakes
- Using WHERE conditions on right table incorrectly
- Expecting LEFT JOIN to behave like INNER JOIN
- Forgetting NULL handling
- Incorrect join conditions

---

### Real-World Applications
- Finding users without orders
- Students without enrollments
- Products without sales
- Employees without departments

---

### Summary
- LEFT JOIN keeps all rows from left table
- Shows missing matches using NULL
- Essential for data completeness checks
- Common interview topic
- Widely used in analytics and reporting
