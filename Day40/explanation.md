## Day 40 – Date Functions (Conceptual Explanation)

Date functions are used to work with
date and time values in SQL.

They are extremely important for
time-based analysis, reporting,
and business decision-making.

---

### DATE Function
The DATE function extracts
the date part from a datetime or timestamp.

Key points:
- Removes time information
- Useful for date-only comparisons
- Common in filtering and grouping

---

### EXTRACT Function
EXTRACT is used to retrieve
specific parts of a date or timestamp.

Common date parts:
- YEAR
- MONTH
- DAY
- HOUR
- MINUTE
- SECOND

---

### Why Date Extraction is Important
- Time-based filtering
- Monthly and yearly analysis
- Trend analysis
- Business reporting

---

### DATE vs EXTRACT
- DATE → returns full date
- EXTRACT → returns a numeric component
- Both serve different analytical purposes

---

### Using Date Functions in WHERE
- Helps filter by year or month
- Enables period-based analysis
- Very common in analytics queries

---

### Performance Considerations
- Functions on date columns may bypass indexes
- Prefer range filters when possible
- Store dates in proper DATE/TIMESTAMP formats

---

### Common Mistakes
- Comparing dates as strings
- Ignoring time portion in timestamps
- Using wrong date part in EXTRACT
- Overusing functions in WHERE clause

---

### Real-World Applications
- Sales by month/year
- User signup analysis
- Order and delivery tracking
- Financial period reporting

---

### Summary
- DATE extracts date from timestamp
- EXTRACT pulls specific date parts
- Essential for time-based analysis
- Widely used in analytics
- Important SQL interview topic
