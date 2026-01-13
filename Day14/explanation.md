## Day 14 – Aggregates Recap (Conceptual Explanation)

Aggregate functions and grouping are the foundation of SQL analytics.
They transform raw data into summarized, meaningful insights.

---

### Aggregate Functions Overview
Aggregate functions operate on multiple rows
and return a single summarized value.

Core aggregate functions:
- COUNT → counts rows
- SUM → totals numeric values
- AVG → calculates average
- MIN → finds smallest value
- MAX → finds largest value

Key characteristics:
- Ignore NULL values (except COUNT(*))
- Work only on numeric data where applicable
- Widely used in reporting and dashboards

---

### GROUP BY Recap
GROUP BY groups rows that share the same values
and applies aggregate functions to each group.

Key points:
- One output row per group
- Required when selecting non-aggregated columns
- Enables category-wise analysis
- Essential for business intelligence queries

---

### HAVING Recap
HAVING filters grouped data after aggregation.

Key points:
- Works on aggregate results
- Used with GROUP BY
- WHERE cannot replace HAVING for aggregated conditions

---

### WHERE vs HAVING
- WHERE filters individual rows before grouping
- HAVING filters grouped results after aggregation
- Both can be used in the same query

---

### Execution Order (INTERVIEW IMPORTANT)
Logical execution order of SQL clauses:
1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY

Understanding this order avoids logical mistakes.

---

### Common Mistakes
- Using aggregate functions without GROUP BY incorrectly
- Selecting non-grouped columns
- Confusing WHERE and HAVING
- Expecting GROUP BY to sort data

---

### Real-World Applications
- Performance analysis
- Sales and revenue summaries
- Dashboard KPIs
- Analytical reporting

---

### Summary
- Aggregate functions summarize data
- GROUP BY enables grouped analysis
- HAVING filters aggregated results
- Core topic for SQL interviews
- Strong foundation for advanced SQL concepts
