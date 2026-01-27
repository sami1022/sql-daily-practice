## Day 28 – JOINS Recap (Conceptual Explanation)

JOINs are used to combine data from multiple tables
based on related columns.

They are fundamental to relational databases and
one of the most important SQL interview topics.

---

### INNER JOIN
- Returns only matching rows from both tables
- Excludes unmatched records
- Most commonly used JOIN

---

### LEFT JOIN
- Returns all rows from the left table
- Includes matching rows from the right table
- Displays NULL for missing right-table data
- Useful for finding missing relationships

---

### RIGHT JOIN
- Returns all rows from the right table
- Includes matching rows from the left table
- Displays NULL for missing left-table data
- Can be rewritten as LEFT JOIN by swapping tables

---

### FULL JOIN
- Returns all rows from both tables
- Matches records where possible
- Displays NULLs for unmatched rows on both sides
- Useful for complete data audits

---

### JOIN + WHERE
- JOIN combines tables
- WHERE filters the combined result
- WHERE conditions must be used carefully
- Incorrect filtering can change JOIN behavior

---

### Multi-table JOIN
- Combines 3 or more tables
- Uses chained JOIN conditions
- Requires correct relationships
- Common in normalized databases

---

### Execution Order (INTERVIEW IMPORTANT)
Logical execution order:
1. FROM
2. JOIN (ON)
3. WHERE
4. GROUP BY
5. HAVING
6. SELECT
7. ORDER BY

---

### Common Mistakes
- Missing join conditions
- Confusing JOIN types
- Incorrect NULL handling
- Turning LEFT JOIN into INNER JOIN unintentionally

---

### Real-World Applications
- Student–course systems
- Orders, customers, products
- Employees, departments
- Business and analytics reporting

---

### Summary
- JOINs connect multiple tables
- Different JOIN types handle missing data differently
- JOIN + WHERE enables precise filtering
- Multi-table JOINs are common in real systems
- Critical topic for SQL interviews
