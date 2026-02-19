## Day 51 – Indexes (Conceptual Explanation)

An index is a database object
that improves the speed of data retrieval.

Indexes work similarly to a book index —
they help locate data quickly
without scanning the entire table.

---

### Why Indexes Are Important

- Improve query performance
- Reduce table scans
- Speed up WHERE filtering
- Improve JOIN performance

---

### How Index Works

Without index:
- Full table scan
- Slower on large tables

With index:
- Database uses lookup structure
- Faster search performance

---

### Types of Indexes

1. Single-column index
   - Created on one column

2. Composite index
   - Created on multiple columns

3. Unique index
   - Ensures uniqueness
   - Prevents duplicate values

---

### When to Use Index

- Frequently searched columns
- Columns used in WHERE
- Columns used in JOIN
- Columns used in ORDER BY

---

### When NOT to Use Index

- Very small tables
- Frequently updated columns
- Columns with low uniqueness
- Over-indexing (slows inserts/updates)

---

### Performance Considerations

- Index speeds up SELECT
- May slow INSERT/UPDATE/DELETE
- Must balance read vs write performance

---

### EXPLAIN Statement

EXPLAIN shows:
- Query execution plan
- Whether index is used
- Estimated cost

Important for performance tuning.

---

### Common Mistakes

- Creating too many indexes
- Indexing low-cardinality columns
- Ignoring composite index order
- Not checking execution plan

---

### Real-World Applications

- Large e-commerce databases
- Banking systems
- CRM systems
- High-traffic applications

---

### Summary

- Index improves query speed
- Reduces full table scans
- Essential for large datasets
- Important SQL optimization concept
- Frequently asked in interviews
