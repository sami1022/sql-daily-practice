## Day 54 – Query Optimization (Conceptual Explanation)

Query optimization focuses on improving
SQL performance and efficiency.

Writing optimized queries is essential
for working with large datasets.

---

### Best Practice 1: Avoid SELECT *

SELECT * retrieves unnecessary columns.
This increases memory usage and network cost.

Always select only required columns.

---

### Best Practice 2: Avoid Functions in WHERE

Applying functions on indexed columns
prevents index usage.

Example:
WHERE YEAR(order_date) = 2024

Better:
Use date range filtering.

---

### Best Practice 3: Use Proper Indexes

Indexes should be added to:
- Frequently filtered columns
- JOIN columns
- ORDER BY columns

Avoid over-indexing.

---

### Best Practice 4: Prefer JOIN Over Subquery (When Suitable)

JOIN is often more efficient.
Especially for large datasets.

Correlated subqueries can be expensive.

---

### Best Practice 5: Use Proper Filtering

Filter data early in query.
Reduce dataset before aggregation.

---

### Best Practice 6: Understand Execution Plan

Use EXPLAIN to:
- Check index usage
- Detect full table scan
- Compare query cost

---

### Performance Trade-offs

- Read performance vs Write performance
- Index improves SELECT
- Index slows INSERT/UPDATE

Balance is key.

---

### Real-World Importance

- Production databases
- Large analytics systems
- Backend APIs
- Data warehouses

---

### Interview Questions

- How to optimize slow query?
- Why index not used?
- What is full table scan?
- How to reduce query cost?

---

### Summary

- Avoid unnecessary columns
- Avoid functions on indexed columns
- Use proper JOIN strategy
- Analyze execution plan
- Think about performance always
