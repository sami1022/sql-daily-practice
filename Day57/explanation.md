## Day 57 – UNION (Conceptual Explanation)

UNION is used to combine the results
of two or more SELECT statements.

Each SELECT must have:
- Same number of columns
- Same column order
- Compatible data types

---

### UNION vs UNION ALL

UNION:
- Removes duplicate rows
- Slightly slower (extra comparison step)

UNION ALL:
- Keeps duplicates
- Faster performance
- Preferred when duplicates are acceptable

---

### Column Compatibility Rules

All SELECT statements must:
- Have same number of columns
- Columns must match in order
- Data types must be compatible

Column names in final result
are taken from the first SELECT.

---

### Ordering Results

ORDER BY must be written
after the final SELECT statement.

---

### Performance Consideration

- UNION performs duplicate elimination
- Uses sorting or hashing internally
- UNION ALL avoids extra overhead

---

### Real-World Applications

- Combining multiple data sources
- Merging partitioned tables
- Combining yearly sales data
- Data warehouse transformations

---

### Common Mistakes

- Mismatched column count
- Wrong column order
- Using UNION instead of UNION ALL unnecessarily
- Applying ORDER BY in individual SELECT blocks

---

### Interview Questions

- Difference between UNION and UNION ALL?
- Why is UNION slower?
- When to use UNION ALL?
- Can column names differ?

---

### Summary

- UNION combines result sets
- Removes duplicates by default
- UNION ALL keeps duplicates
- Columns must match
- Important SQL set operation
