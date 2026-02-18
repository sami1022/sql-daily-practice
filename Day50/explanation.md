## Day 50 – Views (Conceptual Explanation)

A VIEW is a virtual table
based on the result of a SQL query.

It does not store data physically.
Instead, it stores the query definition.

---

### What is a View?

A view:
- Is created using CREATE VIEW
- Contains a saved SQL query
- Acts like a table
- Improves readability

---

### Why Use Views?

- Simplify complex queries
- Improve security (hide columns)
- Standardize reporting logic
- Reuse query logic

---

### Types of Views

1. Simple View
   - Based on one table
   - No GROUP BY
   - Often updatable

2. Complex View
   - Multiple tables
   - Aggregation
   - Usually not updatable

---

### Advantages of Views

- Cleaner code
- Centralized logic
- Easier maintenance
- Enhanced security

---

### Limitations of Views

- Performance depends on underlying query
- Complex views may not allow updates
- Do not store data separately

---

### View vs Table

| Feature | View | Table |
|----------|------|-------|
| Stores Data | No | Yes |
| Based On Query | Yes | No |
| Performance | Query dependent | Direct access |
| Update Allowed | Sometimes | Yes |

---

### Real-World Applications

- Reporting dashboards
- Data abstraction layer
- Hiding sensitive columns
- Business logic encapsulation

---

### Summary

- Views are virtual tables
- Created using CREATE VIEW
- Improve query readability
- Common in analytics systems
- Important SQL interview topic
