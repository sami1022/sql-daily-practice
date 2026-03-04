## Day 63 – Set Operations Recap (Conceptual Explanation)

Set operations allow combining
and comparing SQL result sets
in a mathematical way.

They are powerful tools
for analytical queries.

---

### UNION Recap

UNION combines results
from multiple SELECT statements.

Key features:
- Removes duplicates
- Ensures unique rows
- Slightly slower due to duplicate elimination

---

### UNION ALL Recap

UNION ALL also combines results
but keeps duplicate rows.

Key features:
- Faster than UNION
- Recommended for large datasets
- Used in ETL pipelines

---

### INTERSECT Recap

INTERSECT returns rows
that appear in both result sets.

Key features:
- Finds common data
- Removes duplicates
- Useful for comparison analysis

---

### EXCEPT Recap

EXCEPT returns rows
present in the first result
but not in the second.

Key features:
- Performs set difference
- Removes duplicates
- Useful for missing data detection

---

### Column Compatibility Rules

For all set operations:

- Same number of columns
- Same column order
- Compatible data types

---

### Real-World Applications

Set operations are used in:

- Customer segmentation
- Data reconciliation
- System comparisons
- Migration validation
- Multi-source data integration

---

### Performance Considerations

- UNION requires duplicate elimination
- UNION ALL is faster
- INTERSECT and EXCEPT may require sorting
- Large datasets require indexing

---

### Interview Importance

Interviewers often ask:

- Difference between UNION and UNION ALL
- How to find common records between tables
- How to find missing records
- When to use set operations vs JOIN

---

### Summary

- UNION → combine unique rows
- UNION ALL → combine all rows
- INTERSECT → find common rows
- EXCEPT → find differences

Understanding these operations
is important for analytical SQL.
