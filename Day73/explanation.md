## Day 73 – CTE vs Subquery (Conceptual Explanation)

Both CTEs and subqueries
allow breaking complex queries
into smaller logical steps.

However, they differ in readability,
structure, and maintainability.

---

### Subquery

A subquery is a query
nested inside another query.

It can appear in:

- SELECT clause
- FROM clause
- WHERE clause

Subqueries are useful
for simple calculations.

---

### CTE (Common Table Expression)

A CTE is a named temporary result set
defined using the WITH clause.

It exists only
during query execution.

CTEs make complex queries
more readable.

---

### Subquery vs CTE

Subquery:
- Nested inside query
- Harder to read when deeply nested
- Often used for small logic

CTE:
- Defined at top of query
- Improves readability
- Easier to debug
- Supports recursion

---

### Performance

In many databases,
CTEs and subqueries
have similar performance.

However, query planners
may treat them differently
depending on optimization.

---

### When to Use Subquery

Use subqueries when:

- Query is simple
- Only one intermediate result is needed
- Logic is short

---

### When to Use CTE

Use CTE when:

- Query is complex
- Multiple steps are required
- You want better readability
- Recursive logic is needed

---

### Real-World Applications

CTEs and subqueries are used in:

- Reporting queries
- Data transformations
- Financial calculations
- Analytical SQL pipelines

---

### Interview Questions

Common interview questions:

- Difference between CTE and subquery
- Advantages of CTE
- Can CTE improve readability?
- When to use recursive CTE?

---

### Summary

Subquery:
- Nested query
- Simple usage

CTE:
- Named temporary result
- Cleaner structure
- Better for complex queries
