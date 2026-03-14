## Day 72 – Recursive CTE (Conceptual Explanation)

Recursive CTEs are used
to query hierarchical
or recursive data structures.

Examples include:

- Organizational charts
- Folder structures
- Bill of materials
- Graph traversal

---

### Recursive CTE Structure

A recursive CTE consists of:

1. Anchor Query
2. Recursive Query

Both parts are combined
using UNION ALL.

---

### Anchor Query

The anchor query
defines the starting point.

Example:
Top-level managers
or root nodes.

---

### Recursive Query

The recursive query
references the CTE itself.

It repeatedly retrieves
the next level of data
until no more rows exist.

---

### Recursion Process

Step 1: Anchor query runs  
Step 2: Recursive query runs  
Step 3: New rows are generated  
Step 4: Repeat until no more rows

---

### Level Tracking

Recursive queries often track
hierarchy levels.

This helps visualize
depth in the hierarchy.

---

### Real-World Applications

Recursive CTEs are used in:

- Organizational reporting
- Product category trees
- File system structures
- Graph analytics
- Network traversal

---

### Interview Importance

Interviewers may ask:

- What is a recursive CTE?
- Difference between recursive and non-recursive CTE
- How hierarchical queries work
- How to prevent infinite recursion

---

### Summary

Recursive CTEs allow SQL
to process hierarchical data.

They consist of:

- Anchor query
- Recursive query
- UNION ALL

They are powerful tools
for tree and graph queries.
