## Day 11 – HAVING (Filter Groups)

The HAVING clause is used to filter grouped data after aggregation.
It works with GROUP BY and aggregate functions.

HAVING is essential when conditions must be applied
to aggregated results such as COUNT, SUM, AVG, MIN, or MAX.

---

### What is HAVING?
HAVING filters groups created by the GROUP BY clause.

Key points:
- Used only with GROUP BY
- Works on aggregated values
- Applied after grouping is complete
- Filters summary results, not individual rows

---

### HAVING vs WHERE (INTERVIEW IMPORTANT)

WHERE:
- Filters individual rows
- Applied before GROUP BY
- Cannot be used with aggregate functions

HAVING:
- Filters grouped results
- Applied after GROUP BY
- Used with aggregate functions

---

### Why HAVING is Needed
- WHERE cannot filter aggregated data
- HAVING allows conditions on totals, averages, counts, etc.
- Enables meaningful group-level analysis

---

### Aggregate Functions with HAVING
HAVING is commonly used with:
- COUNT → filter groups by size
- SUM → filter groups by total values
- AVG → filter groups by average
- MIN → filter groups by minimum value
- MAX → filter groups by maximum value

---

### Execution Order (INTERVIEW FAVORITE)
Logical execution order of SQL clauses:
1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY

Understanding this order avoids logical errors.

---

### Common Mistakes
- Using HAVING without GROUP BY
- Trying to use WHERE with aggregate functions
- Confusing WHERE and HAVING
- Forgetting that HAVING works on grouped data only

---

### Real-World Applications
- Finding cities with high average performance
- Identifying departments with many employees
- Filtering sales regions with high revenue
- Generating summary reports

---

### Summary
- HAVING filters aggregated results
- Used with GROUP BY
- WHERE filters rows, HAVING filters groups
- Essential for analytics and reporting
- Frequently tested in SQL interviews
