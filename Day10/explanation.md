## Day 10 – GROUP BY (Grouped Aggregation)

The GROUP BY clause is used to group rows that have the same values
in specified columns and apply aggregate functions to each group.

It is one of the most important SQL concepts for data analysis,
reporting, and interviews.

---

### What is GROUP BY?
GROUP BY groups rows based on one or more columns
so that aggregate functions can summarize each group.

Key points:
- Rows with the same group value are combined
- Aggregate functions operate on each group
- Commonly used with COUNT, SUM, AVG, MIN, MAX

---

### Why GROUP BY is Used
- To analyze data category-wise
- To generate summary reports
- To answer business questions like totals, averages, and counts
- To transform raw data into meaningful insights

---

### GROUP BY with Aggregate Functions
Aggregate functions summarize data within each group.

Key points:
- COUNT → number of rows in each group
- SUM → total value per group
- AVG → average value per group
- MIN → smallest value per group
- MAX → largest value per group

---

### Rules of GROUP BY (INTERVIEW IMPORTANT)
- Every column in SELECT must either:
  - Appear in GROUP BY, or
  - Be used inside an aggregate function
- GROUP BY cannot be used without aggregation in meaningful analysis
- Column order in GROUP BY does not affect grouping

---

### WHERE vs GROUP BY
- WHERE filters rows before grouping
- GROUP BY groups rows after filtering
- WHERE cannot be used on aggregated results

---

### Execution Order
Logical execution order of SQL clauses:
1. FROM
2. WHERE
3. GROUP BY
4. SELECT
5. ORDER BY

Understanding this order helps avoid logical errors.

---

### Common Mistakes
- Selecting non-grouped columns without aggregation
- Using GROUP BY without aggregate functions incorrectly
- Confusing WHERE and GROUP BY roles
- Expecting GROUP BY to sort results automatically

---

### Real-World Applications
- City-wise or department-wise reports
- Performance analysis
- Sales and revenue summaries
- Dashboard metrics

---

### Summary
- GROUP BY enables grouped aggregation
- Used with aggregate functions
- Essential for analytics and reporting
- Frequently tested in SQL interviews
