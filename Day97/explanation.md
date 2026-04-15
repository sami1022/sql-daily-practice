## Day 97 – SQL Optimization (Conceptual Explanation)

SQL optimization improves
query performance
and reduces execution time.

---

### Why Optimization Matters

In real-world systems:

- tables contain millions of rows
- slow queries impact performance
- efficient queries save resources

---

### Indexing

Indexes help:

- speed up searches
- reduce scan time
- improve filtering

Types:
- single column index
- composite index

---

### Query Optimization Techniques

1. Use indexes on frequently used columns
2. Avoid SELECT *
3. Filter early using WHERE
4. Use JOIN instead of subqueries (when appropriate)
5. Limit result size using LIMIT

---

### EXPLAIN

EXPLAIN shows:

- how query executes
- index usage
- scan type

Helps identify performance issues.

---

### Common Mistakes

- missing indexes
- unnecessary joins
- large data scans
- using functions on indexed columns

---

### Real-World Applications

Optimization is critical in:

- large-scale databases
- analytics systems
- production environments

---

### Interview Importance

Common questions:

- How to optimize a query?
- What is indexing?
- What does EXPLAIN do?
- Difference between clustered and non-clustered index

---

### Summary

Optimization ensures:

- faster queries
- efficient resource usage
- scalable systems

This is an advanced SQL skill.
