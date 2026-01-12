## Day 13 – Aggregate Practice (Concept Recap)

This practice day reinforces the use of aggregate functions
along with GROUP BY and HAVING to solve real-world problems.

---

### Aggregate Functions Recap
Aggregate functions summarize multiple rows into a single value.

Key functions:
- COUNT → counts rows
- SUM → totals numeric values
- AVG → calculates average
- MIN → finds smallest value
- MAX → finds largest value

---

### GROUP BY in Practice
GROUP BY groups rows based on column values so that
aggregate functions can summarize each group.

Key points:
- One output row per group
- Used for category-wise analysis
- Essential for reports and dashboards

---

### HAVING in Practice
HAVING filters grouped results after aggregation.

Key points:
- Used with GROUP BY
- Works on aggregate values
- WHERE cannot replace HAVING for grouped conditions

---

### Problem-Solving Approach
1. Identify the required metric (count, sum, average, min, max)
2. Decide grouping columns (if any)
3. Apply GROUP BY
4. Filter grouped results using HAVING
5. Use WHERE only for row-level filtering

---

### Common Interview Patterns
- City-wise or department-wise analysis
- Filtering groups based on aggregate thresholds
- Combining COUNT, AVG, SUM with HAVING
- Understanding execution order

---

### Summary
- Practice strengthens aggregate concepts
- GROUP BY + HAVING are core analytics tools
- Most business SQL problems rely on aggregation
- Strong foundation for advanced SQL topics
