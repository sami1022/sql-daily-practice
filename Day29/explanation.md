## Day 29 – Subqueries (Conceptual Explanation)

A subquery is a query written inside another SQL query.
It allows SQL to perform complex operations
by breaking problems into smaller steps.

Subqueries are a key transition point
from basic SQL to advanced SQL.

---

### What is a Subquery?
A subquery is an inner query whose result
is used by an outer query.

Key points:
- Also called a nested query
- Executed before the outer query
- Can return one value or multiple values

---

### Why Subqueries Are Used
- Solve complex problems step by step
- Improve query readability
- Avoid temporary tables
- Enable advanced filtering logic

---

### Types of Subqueries (Overview)
- Scalar Subquery → returns a single value
- Multiple-row Subquery → returns multiple rows
- Column Subquery → returns one column
- Nested Subquery → subquery inside another subquery

---

### Where Subqueries Can Be Used
Subqueries can appear in:
- WHERE clause
- SELECT clause
- FROM clause
- HAVING clause

---

### Subquery Execution Order
- Inner query runs first
- Result is passed to outer query
- Outer query uses subquery result for filtering

---

### Subqueries vs JOINs
- Subqueries focus on filtering logic
- JOINs focus on combining tables
- Many problems can be solved using both
- Performance depends on database and use case

---

### Common Mistakes
- Returning multiple rows when a single value is expected
- Forgetting parentheses
- Writing inefficient nested subqueries
- Overusing subqueries where JOIN is simpler

---

### Real-World Applications
- Finding top performers
- Comparing against averages
- Filtering based on aggregated results
- Business and analytical queries

---

### Summary
- Subqueries are queries inside queries
- Executed before the outer query
- Enable advanced SQL logic
- Bridge between basic and advanced SQL
- Very important for SQL interviews
