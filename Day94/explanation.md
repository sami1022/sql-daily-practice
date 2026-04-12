## Day 94 – Window Functions (Conceptual Explanation)

Window functions perform calculations
across a set of rows
without collapsing them.

---

### What is a Window Function?

It allows you to:

- rank rows
- calculate running totals
- compare rows
- analyze data without GROUP BY

---

### PARTITION BY

PARTITION BY divides data
into groups.

Example:
department-wise ranking

---

### ORDER BY in Window

Defines the order
within each partition.

---

### Common Window Functions

RANK():
- Assigns rank with gaps

DENSE_RANK():
- Assigns rank without gaps

ROW_NUMBER():
- Unique row numbering

LAG():
- Access previous row

LEAD():
- Access next row

---

### Running Total

SUM() OVER():
- Used for cumulative calculations

---

### Why Window Functions Matter

They help in:

- advanced analytics
- ranking problems
- time-series analysis
- interview questions

---

### Interview Importance

Very common interview tasks:

- Top N per group
- Running totals
- Row comparison
- Duplicate detection

---

### Summary

Window functions:

- do not reduce rows
- provide advanced analytics
- are critical for interviews
