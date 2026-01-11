## Day 12 – GROUP BY + HAVING (Combined Concepts)

GROUP BY and HAVING are used together to perform
grouped aggregation and then filter those aggregated results.

This combination is extremely important in analytics,
business reporting, and SQL interviews.

---

### GROUP BY Recap
GROUP BY groups rows that share the same values in specified columns.

Key points:
- Creates groups of rows
- Used with aggregate functions
- Each group produces one output row
- Essential for summarized analysis

---

### HAVING Recap
HAVING filters the grouped results created by GROUP BY.

Key points:
- Works on aggregated data
- Applied after grouping
- Used with aggregate functions
- WHERE cannot replace HAVING for aggregated conditions

---

### GROUP BY + HAVING Together
When used together:
- GROUP BY creates groups
- Aggregate functions summarize each group
- HAVING filters the summarized groups

This allows powerful group-level analysis.

---

### WHERE vs HAVING (Combined Use)
- WHERE filters rows before grouping
- HAVING filters groups after aggregation
- Both can be used in the same query

Execution flow:
1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY

---

### Rules to Remember (INTERVIEW IMPORTANT)
- Columns in SELECT must be either:
  - Part of GROUP BY, or
  - Used inside an aggregate function
- HAVING always works with GROUP BY
- Aggregate functions cannot be used in WHERE

---

### Common Mistakes
- Using HAVING without GROUP BY
- Trying to filter aggregated values using WHERE
- Selecting non-grouped columns
- Forgetting execution order

---

### Real-World Applications
- City-wise performance analysis
- Department-level reporting
- Sales and revenue summaries
- Dashboard metrics and KPIs

---

### Summary
- GROUP BY groups data
- HAVING filters grouped data
- Both together enable advanced analytics
- Core concept for SQL interviews
- Foundation for complex SQL queries
