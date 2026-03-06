## Day 65 – Ranking Functions (Conceptual Explanation)

Ranking functions assign positions
to rows within a dataset
based on a specific order.

They are commonly used
for analytical queries.

---

### RANK Function

RANK assigns the same rank
to rows with equal values.

However, it creates gaps
in ranking numbers.

Example:

Values: 100, 90, 90, 80  
Ranks: 1, 2, 2, 4

Notice the gap after duplicate values.

---

### DENSE_RANK Function

DENSE_RANK also assigns
the same rank to equal values.

But it does NOT create gaps.

Example:

Values: 100, 90, 90, 80  
Ranks: 1, 2, 2, 3

---

### Ranking vs ROW_NUMBER

ROW_NUMBER:
- Always unique
- No duplicate ranking

RANK:
- Duplicate ranks allowed
- Creates gaps

DENSE_RANK:
- Duplicate ranks allowed
- No gaps

---

### PARTITION BY in Ranking

PARTITION BY divides data
into smaller groups.

Ranking restarts
inside each partition.

Example partitions:
- Region
- Department
- Product category

---

### Real-World Applications

Ranking functions are used in:

- Leaderboards
- Sales performance ranking
- Top customers analysis
- Top N products
- Employee performance reports

---

### Interview Questions

Common interview questions:

- Difference between ROW_NUMBER, RANK, and DENSE_RANK
- How to find top N per group
- How to remove duplicates using ROW_NUMBER

These are extremely common
in SQL interviews.

---

### Summary

RANK:
- Allows duplicate ranks
- Creates gaps

DENSE_RANK:
- Allows duplicate ranks
- No gaps

Ranking functions are essential
for analytical SQL queries.
