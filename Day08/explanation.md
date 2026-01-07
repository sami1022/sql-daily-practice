## Day 08 – Aggregate Functions (COUNT, SUM, AVG)

Aggregate functions are SQL functions used to perform calculations on a set of rows
and return a single summarized value. They are widely used in analytics, reporting,
and business intelligence.

---

### COUNT Function
COUNT is used to count the number of rows.

Key points:
- COUNT(*) counts all rows, including duplicates
- COUNT(column) ignores NULL values
- Frequently used to measure totals and frequencies
- Commonly combined with GROUP BY

---

### SUM Function
SUM is used to calculate the total of numeric values in a column.

Key points:
- Works only on numeric columns
- Ignores NULL values
- Used for totals such as marks, revenue, or sales
- Often used with GROUP BY for category-wise totals

---

### AVG Function
AVG is used to calculate the average (mean) of numeric values.

Key points:
- Works only on numeric columns
- Ignores NULL values
- Result may be a decimal value
- Commonly used for performance and trend analysis

---

### GROUP BY with Aggregate Functions
GROUP BY is used to apply aggregate functions to groups of rows.

Key points:
- Groups rows with the same values
- Aggregate functions summarize each group
- All non-aggregated columns must appear in GROUP BY
- Very common in interview questions

---

### WHERE vs Aggregate Functions
- WHERE filters rows before aggregation
- Aggregate functions summarize filtered data
- WHERE cannot be used directly on aggregate results

---

### Common Mistakes
- Using aggregate functions without GROUP BY when required
- Selecting non-grouped columns without aggregation
- Confusing COUNT(*) with COUNT(column)
- Expecting SUM or AVG to include NULL values

---

### Real-World Applications
- Counting users or records
- Calculating total scores or revenue
- Finding average performance
- Creating summary reports and dashboards

---

### Summary
- Aggregate functions summarize data
- COUNT measures quantity
- SUM calculates totals
- AVG calculates averages
- GROUP BY enables category-wise analysis
- Core topic for SQL interviews and analytics
