## Day 70 – Window Functions Recap (Conceptual Explanation)

Window functions allow calculations
across rows of a result set
without collapsing them.

They are essential for
analytical SQL queries.

---

### ROW_NUMBER

ROW_NUMBER assigns
a unique sequential number
to each row.

It is commonly used for:

- Deduplication
- Top record selection
- Pagination

---

### RANK vs DENSE_RANK

RANK:
- Allows duplicate ranks
- Creates gaps in ranking

DENSE_RANK:
- Allows duplicate ranks
- Does not create gaps

Both are used for
leaderboards and performance rankings.

---

### LEAD and LAG

LAG retrieves
the previous row value.

LEAD retrieves
the next row value.

These functions help compare
sequential records.

---

### PARTITION BY

PARTITION BY divides data
into logical groups.

Each group performs
its own window calculation.

It allows analytics
within categories.

---

### Running Totals

Running totals calculate
cumulative values
across ordered rows.

Common uses include:

- Revenue tracking
- Financial balances
- Growth analysis

---

### Real-World Applications

Window functions are widely used in:

- Data analytics
- Financial reporting
- Sales dashboards
- Customer behavior analysis
- Time-series analysis

---

### Interview Importance

Many SQL interviews
test window functions through:

- Top N per group
- Ranking problems
- Previous row comparisons
- Running totals

Mastering these patterns
is essential for data roles.

---

### Summary

Window functions enable:

- Row-level analytics
- Ranking and ordering
- Sequential comparisons
- Group-wise calculations

They are one of the most powerful
features in SQL.
