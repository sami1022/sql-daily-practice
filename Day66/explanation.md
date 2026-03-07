## Day 66 – LEAD & LAG (Conceptual Explanation)

LEAD and LAG are window functions
used to access values
from other rows in the dataset.

They allow comparison between rows
without using self joins.

---

### LAG Function

LAG retrieves the value
from a previous row.

Example:
LAG(column) OVER(ORDER BY column)

It is useful for:
- Comparing current and previous values
- Trend analysis
- Growth calculations

---

### LEAD Function

LEAD retrieves the value
from the next row.

Example:
LEAD(column) OVER(ORDER BY column)

It helps in:
- Predicting next values
- Forward comparison
- Sequential analysis

---

### Offset Parameter

Both functions support offset.

Example:
LAG(amount, 2)

This retrieves
the value two rows before.

---

### Default Value

If there is no previous or next row,
a default value can be provided.

Example:
LAG(amount,1,0)

---

### PARTITION BY

PARTITION BY divides data
into groups.

LEAD and LAG calculations
restart within each partition.

Example partitions:
- Employee
- Region
- Department

---

### Real-World Applications

LEAD and LAG are used in:

- Sales trend analysis
- Stock price movement
- Customer activity analysis
- Revenue growth tracking
- Time-series analytics

---

### Interview Importance

Common questions include:

- Compare consecutive records
- Find growth between months
- Calculate difference between rows
- Identify previous transaction

These are very common
in SQL analytics interviews.

---

### Summary

LAG → Access previous row  
LEAD → Access next row  

Both are powerful
for row-by-row comparison
in analytical SQL queries.
