## Day 35 – Subqueries Recap (Conceptual Explanation)

Subqueries allow one SQL query to be nested
inside another query.

They help break complex problems into
smaller, logical steps.

---

### Types of Subqueries

#### Basic Subquery
- Independent query
- Executes once
- Used for comparison with aggregates

#### Subquery in WHERE
- Filters rows based on subquery results
- Commonly used with IN and EXISTS

#### IN and NOT IN
- IN checks for matching values
- NOT IN excludes values
- NULL handling is critical

#### EXISTS and NOT EXISTS
- Checks presence of rows
- Stops execution once match is found
- Safer and often faster than IN

---

### Scalar Subqueries
- Return exactly one value
- Commonly used in SELECT clause
- Useful for analytics and reporting

---

### Correlated Subqueries
- Depend on outer query
- Execute row by row
- Used for group-wise comparisons
- Powerful but can be expensive

---

### Subquery vs JOIN
- Subqueries → filtering and conditions
- JOINs → combining tables
- JOINs usually perform better
- Choice depends on use case

---

### Execution Order
1. Subquery executes first
2. Result passed to outer query
3. Outer query applies filtering

---

### Common Mistakes
- Returning multiple rows in scalar subqueries
- Using NOT IN with NULL values
- Overusing correlated subqueries
- Ignoring performance implications

---

### Real-World Applications
- Above-average analysis
- Top performers per category
- Enrollment and validation checks
- Interview-level SQL problems

---

### Summary
- Subqueries are core advanced SQL tools
- Multiple types serve different purposes
- EXISTS is safer than NOT IN
- Correlated subqueries are powerful
- Very important for SQL interviews
