## Day 59 – INTERSECT (Conceptual Explanation)

INTERSECT returns only the rows
that exist in both SELECT statements.

It finds the common records
between two result sets.

---

### How INTERSECT Works

- Compares rows from two SELECT statements
- Returns only matching rows
- Removes duplicates automatically

---

### Column Rules

Both SELECT statements must:
- Have same number of columns
- Follow same column order
- Have compatible data types

---

### INTERSECT vs INNER JOIN

INTERSECT:
- Compares full rows
- Removes duplicates automatically
- Simpler syntax for exact matches

INNER JOIN:
- Allows joining on specific columns
- More flexible
- Often more commonly used

---

### Duplicate Handling

INTERSECT:
- Removes duplicate rows
- Behaves similar to DISTINCT

---

### Performance Considerations

- May use sorting or hashing
- Can be expensive on large datasets
- Depends on optimizer

---

### When to Use INTERSECT

- Finding common records
- Data reconciliation
- Comparing two datasets
- Audit checks

---

### Real-World Applications

- Customers active in both channels
- Users present in two systems
- Matching datasets during migration
- Cross-platform validation

---

### Common Mistakes

- Mismatched column count
- Expecting partial column matching
- Confusing with JOIN

---

### Interview Questions

- Difference between INTERSECT and JOIN?
- Does INTERSECT remove duplicates?
- Can INTERSECT be replaced with EXISTS?
- Is INTERSECT supported in all databases?

---

### Summary

- INTERSECT returns common rows
- Removes duplicates automatically
- Requires matching column structure
- Useful for comparison queries
- Important SQL set operation
