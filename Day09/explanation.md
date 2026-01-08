## Day 09 – MIN & MAX (Extreme Values)

MIN and MAX are aggregate functions used to find extreme values
from a set of rows in a table.

They are commonly used in analytics, reporting, and interview questions
to identify best and worst values.

---

### MIN Function
MIN returns the smallest value from a column.

Key points:
- Works with numeric, date, and string data types
- Ignores NULL values
- Commonly used to find lowest scores, earliest dates, or minimum values
- Can be used with GROUP BY to find minimum per category

---

### MAX Function
MAX returns the largest value from a column.

Key points:
- Works with numeric, date, and string data types
- Ignores NULL values
- Used to find highest scores, latest dates, or maximum values
- Frequently combined with GROUP BY

---

### MIN & MAX with GROUP BY
GROUP BY allows MIN and MAX to be calculated for each group.

Key points:
- Groups rows based on column values
- MIN or MAX is applied within each group
- Useful for city-wise, department-wise, or category-wise analysis

---

### WHERE with MIN & MAX
WHERE filters rows before applying MIN or MAX.

Key points:
- Used to restrict data considered in aggregation
- Helps find extreme values under specific conditions
- WHERE cannot filter on aggregated results

---

### Common Mistakes
- Expecting MIN or MAX to include NULL values
- Using aggregate functions without GROUP BY when selecting other columns
- Confusing MIN/MAX with ORDER BY + LIMIT

---

### Real-World Applications
- Finding highest and lowest scores
- Identifying youngest and oldest records
- Detecting peak or minimum values
- Generating performance reports

---

### Summary
- MIN finds the smallest value
- MAX finds the largest value
- Both ignore NULL values
- Used with GROUP BY for grouped analysis
- Frequently tested in SQL interviews
