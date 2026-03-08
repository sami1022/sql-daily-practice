## Day 67 – PARTITION BY (Conceptual Explanation)

PARTITION BY divides rows
into smaller groups
for window function calculations.

Unlike GROUP BY,
PARTITION BY does not collapse rows.

Each row remains visible
while calculations are performed
within its partition.

---

### PARTITION BY Concept

Think of partitions as
temporary groups.

Example partitions:
- Region
- Department
- Customer
- Employee

Each partition
calculates its own results.

---

### PARTITION BY vs GROUP BY

GROUP BY:
- Aggregates rows
- Returns fewer rows

PARTITION BY:
- Keeps all rows
- Adds analytical calculations

---

### Window Function Structure

Window functions usually follow this format:

FUNCTION() OVER(
    PARTITION BY column
    ORDER BY column
)

Both clauses are optional
depending on the analysis.

---

### Why PARTITION BY is Important

It enables:

- Group-wise analytics
- Ranking within groups
- Running totals
- Comparative analysis

Without reducing row-level detail.

---

### Real-World Applications

PARTITION BY is used in:

- Sales performance by region
- Employee ranking within departments
- Customer purchase analytics
- Financial reporting
- Data warehouse queries

---

### Interview Questions

Common questions include:

- Difference between PARTITION BY and GROUP BY
- How to calculate group-wise metrics
- How ranking works within partitions

---

### Summary

PARTITION BY:
- Divides dataset into groups
- Keeps all rows
- Enables advanced analytics
- Essential for window functions
