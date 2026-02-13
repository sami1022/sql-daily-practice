## Day 45 – COALESCE / IF (Conceptual Explanation)

NULL represents missing or unknown data in SQL.

Handling NULL properly is critical for:
- Accurate calculations
- Clean reporting
- Business logic enforcement

---

### What is NULL?

NULL means:
- Value is missing
- Value is unknown
- Value is not applicable

NULL is NOT equal to:
- 0
- Empty string
- False

---

### COALESCE Function

COALESCE returns the first non-NULL value
from a list of expressions.

Syntax:
COALESCE(value1, value2, ..., valueN)

Key points:
- Stops at first non-NULL value
- Works in all major SQL databases
- Very common in reporting queries

---

### IF Function

IF is used for conditional logic
(mainly in MySQL).

Syntax:
IF(condition, true_value, false_value)

It can be used to replace NULL values
or apply conditional transformations.

---

### Why NULL Handling is Important

- NULL breaks calculations
- SUM ignores NULL
- Arithmetic with NULL returns NULL
- Reporting becomes incorrect

Example:
100 + NULL = NULL

---

### Best Practices

- Use COALESCE for safe calculations
- Always handle NULL in aggregates
- Be cautious in WHERE clauses
- Prefer COALESCE over IF for portability

---

### Common Mistakes

- Using = NULL instead of IS NULL
- Forgetting NULL in calculations
- Assuming NULL behaves like 0
- Ignoring NULL impact on aggregates

---

### Real-World Applications

- Salary calculations
- Revenue reports
- Customer contact validation
- KPI dashboards

---

### Summary

- NULL represents missing data
- COALESCE replaces NULL safely
- IF provides conditional handling
- NULL handling is critical in analytics
- Important SQL interview topic
