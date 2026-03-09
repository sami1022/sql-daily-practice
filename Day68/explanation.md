## Day 68 – Window Functions + Aggregates (Conceptual Explanation)

Running totals are cumulative calculations
that build progressively
across ordered rows.

They are commonly used
in analytical SQL queries.

---

### Running Total

Running total calculates
a cumulative sum
across ordered rows.

Each row adds its value
to the previous total.

Example use cases:
- Revenue growth
- Financial balance tracking
- Sales accumulation

---

### Window Aggregate Functions

Aggregate functions can be used
with window functions.

Examples include:

SUM()  
AVG()  
COUNT()  
MIN()  
MAX()

When combined with OVER(),
they operate across rows
without collapsing them.

---

### ORDER BY in Window Functions

ORDER BY defines
the sequence of calculation.

Without ordering,
running totals are meaningless.

Example:
Running totals across dates.

---

### PARTITION BY with Running Totals

PARTITION BY allows
separate cumulative totals
within each group.

Example partitions:
- Employee
- Region
- Product

Each partition
has its own running total.

---

### Real-World Applications

Running totals are used in:

- Financial reporting
- Daily revenue tracking
- Sales dashboards
- Inventory tracking
- Time-series analysis

---

### Interview Importance

Common interview questions include:

- Calculate running total
- Compute cumulative revenue
- Find growth between periods

These are frequently asked
in SQL analytics interviews.

---

### Summary

Running totals:
- Use SUM() with window functions
- Require ORDER BY
- Can be grouped using PARTITION BY
- Useful for financial and time-series analysis
