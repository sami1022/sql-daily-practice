## Day 32 – Correlated Subquery (Conceptual Explanation)

A correlated subquery is a subquery that
depends on values from the outer query.

Unlike normal subqueries, correlated subqueries
are executed once for each row of the outer query.

---

### What is a Correlated Subquery?
A correlated subquery:
- References columns from the outer query
- Cannot run independently
- Executes repeatedly, once per row
- Is more dynamic than a normal subquery

---

### How Correlated Subqueries Work
- Outer query selects one row
- Subquery runs using that row’s values
- Condition is evaluated
- Process repeats for each row

This creates a row-by-row evaluation.

---

### Correlated vs Non-Correlated Subquery
- Non-correlated subquery:
  - Runs once
  - Independent of outer query
- Correlated subquery:
  - Runs multiple times
  - Depends on outer query values

---

### Common Use Cases
- Comparing row values with group averages
- Finding top records within groups
- City-wise, department-wise, category-wise analysis
- Advanced filtering logic

---

### EXISTS with Correlated Subqueries
- EXISTS is commonly used with correlated subqueries
- Stops execution once a match is found
- Often more efficient than IN
- Improves performance on large datasets

---

### Performance Considerations
- Can be slower due to repeated execution
- Indexing improves performance
- JOIN or window functions may be better alternatives

---

### Common Mistakes
- Forgetting correlation condition
- Writing correlated subqueries unnecessarily
- Expecting correlated subqueries to run once
- Poor performance on large tables

---

### Real-World Applications
- Top performers by category
- Above-average analysis
- Business analytics and reports
- Interview-level SQL problems

---

### Summary
- Correlated subqueries depend on outer queries
- Executed row by row
- Very powerful but potentially expensive
- Often paired with EXISTS
- Advanced and important SQL interview topic
