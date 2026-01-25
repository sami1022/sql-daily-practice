## Day 26 – JOIN + WHERE (Conceptual Explanation)

JOIN and WHERE are commonly used together to
combine tables and then filter the combined results.

This pattern is extremely important in analytics
and real-world SQL queries.

---

### JOIN Recap
JOIN combines rows from multiple tables
based on a related column.

Key points:
- INNER JOIN returns matching rows
- LEFT, RIGHT, FULL JOIN handle missing data
- JOIN creates a combined dataset

---

### WHERE with JOIN
WHERE filters rows after tables are joined.

Key points:
- Applies conditions to joined results
- Can filter columns from any joined table
- Reduces result set size
- Improves query relevance

---

### JOIN Condition vs WHERE Condition
- JOIN condition (ON):
  - Defines how tables are related
- WHERE condition:
  - Filters the joined result

Both serve different purposes and should not be confused.

---

### Filtering on Different Tables
- WHERE can filter:
  - Left table columns
  - Right table columns
  - Both simultaneously
- Correct placement avoids incorrect results

---

### Common Mistakes
- Putting join conditions inside WHERE incorrectly
- Turning LEFT JOIN into INNER JOIN unintentionally
- Forgetting NULL handling
- Over-filtering results

---

### Execution Order (INTERVIEW IMPORTANT)
Logical execution order:
1. FROM
2. JOIN (ON)
3. WHERE
4. GROUP BY
5. HAVING
6. SELECT
7. ORDER BY

Understanding this order is critical.

---

### Real-World Applications
- Filtering enrolled users
- City-wise or department-wise reports
- Course or product-based analysis
- Business rule filtering

---

### Summary
- JOIN combines tables
- WHERE filters joined data
- Both together enable precise analysis
- Core SQL pattern for analytics
- Frequently tested in SQL interviews
