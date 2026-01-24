## Day 25 – FULL JOIN (Conceptual Explanation)

FULL JOIN is used to retrieve all records from both tables,
matching rows where possible and including unmatched rows
from both sides.

It provides complete data coverage.

---

### What is FULL JOIN?
FULL JOIN returns:
- All rows from the left table
- All rows from the right table
- Matching rows combined
- NULL values where no match exists

---

### FULL JOIN vs LEFT & RIGHT JOIN
- LEFT JOIN → all left rows + matching right rows
- RIGHT JOIN → all right rows + matching left rows
- FULL JOIN → all rows from both tables

---

### Handling Missing Data
- NULL values represent missing matches
- Useful for identifying gaps in data
- Helps ensure data completeness

---

### When to Use FULL JOIN
- When both tables are equally important
- When analyzing unmatched records
- When performing data reconciliation
- When auditing data completeness

---

### Common Mistakes
- Expecting FULL JOIN to behave like INNER JOIN
- Forgetting NULL handling
- Using FULL JOIN where INNER JOIN is sufficient
- Database compatibility issues (not supported everywhere)

---

### Real-World Applications
- Data reconciliation tasks
- Student-enrollment audits
- Sales vs inventory analysis
- Data migration validation

---

### Summary
- FULL JOIN combines all rows from both tables
- Shows unmatched data clearly
- Helps with complete data analysis
- Less commonly used but powerful
- Important concept for SQL interviews
