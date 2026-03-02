## Day 61 – Set Operations Mixed Practice (Conceptual Explanation)

Set operations allow combining
and comparing datasets efficiently.

They treat query results as mathematical sets.

---

### UNION

- Combines datasets
- Removes duplicates
- Ensures unique result

---

### UNION ALL

- Combines datasets
- Keeps duplicates
- Faster than UNION

---

### INTERSECT

- Returns common rows
- Removes duplicates
- Useful for overlap detection

---

### EXCEPT

- Returns rows in first set only
- Removes duplicates
- Useful for difference detection

---

### Order of Execution

Set operations are evaluated
from top to bottom.

Parentheses may be required
for complex combinations.

---

### Performance Considerations

- UNION removes duplicates (extra work)
- UNION ALL is faster
- INTERSECT & EXCEPT may use sorting
- Large datasets need indexing

---

### Real-World Applications

- Multi-channel customer analysis
- Data reconciliation
- System comparison
- Data warehouse integration

---

### Interview Focus

Common questions:
- Difference between UNION and UNION ALL?
- When to use INTERSECT?
- How to simulate EXCEPT in MySQL?
- Performance difference between set operations?

---

### Summary

- Set operations treat results as datasets
- Useful for combining and comparing data
- Require matching column structure
- Important SQL analytical concept
