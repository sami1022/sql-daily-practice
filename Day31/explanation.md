## Day 31 – Subquery in SELECT (Conceptual Explanation)

A scalar subquery is a subquery that returns
exactly **one value**.

Scalar subqueries are commonly used in the SELECT clause
to display calculated or aggregated values
alongside row-level data.

---

### What is a Scalar Subquery?
A scalar subquery:
- Returns a single value
- Can be used like a column
- Executes once per row (logically)

---

### Why Use Scalar Subqueries in SELECT
- To display global values with row data
- To compare individual rows with aggregates
- To enrich result sets with summary information
- To avoid complex joins for simple calculations

---

### Where Scalar Subqueries Can Be Used
Scalar subqueries can appear in:
- SELECT clause
- WHERE clause
- HAVING clause

They **cannot** return multiple rows.

---

### Execution Behavior
- Inner subquery is evaluated first
- Result is treated as a constant value
- Outer query displays it for each row

---

### Scalar Subquery vs JOIN
- Scalar subquery returns one value
- JOIN combines rows from tables
- Scalar subqueries are simpler for global metrics
- JOINs are better for relational data

---

### Performance Considerations
- Scalar subqueries may execute repeatedly
- Suitable for small or aggregated results
- For large datasets, JOINs may perform better

---

### Common Mistakes
- Returning multiple rows instead of one
- Forgetting aggregation in scalar subqueries
- Overusing scalar subqueries unnecessarily
- Confusing scalar subqueries with correlated subqueries

---

### Real-World Applications
- Showing average, max, min alongside data
- Comparing individual performance to overall metrics
- Analytics dashboards
- Interview-level SQL questions

---

### Summary
- Scalar subqueries return a single value
- Commonly used in SELECT clause
- Enhance row-level data with summary metrics
- Important advanced SQL concept
- Frequently tested in SQL interviews
