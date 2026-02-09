## Day 41 – Date Arithmetic (Conceptual Explanation)

Date arithmetic allows SQL to perform
calculations on date and time values.

It is essential for analyzing durations,
deadlines, trends, and time-based conditions.

---

### INTERVAL Keyword
INTERVAL represents a period of time
that can be added to or subtracted from dates.

Key points:
- Supports days, months, years, hours, etc.
- Used with DATE and TIMESTAMP values
- Makes time calculations readable

---

### Adding and Subtracting Dates
- Dates can be shifted forward or backward
- Helps calculate deadlines and schedules
- Used in delivery and SLA tracking

---

### Date Difference
- Subtracting dates returns duration
- Result depends on database type
- Useful for performance measurement

---

### Common Time Units
- DAY
- MONTH
- YEAR
- HOUR
- MINUTE
- SECOND

---

### Using Date Arithmetic in WHERE
- Filter recent or upcoming records
- Identify delays or early completions
- Perform rolling window analysis

---

### Performance Considerations
- Date arithmetic is efficient
- Index usage may be affected in WHERE
- Prefer range-based comparisons when possible

---

### Common Mistakes
- Confusing DATE and TIMESTAMP
- Incorrect INTERVAL syntax
- Ignoring time zones
- Assuming date subtraction returns integer everywhere

---

### Real-World Applications
- Delivery time analysis
- Subscription validity checks
- Retention and churn analysis
- SLA and compliance tracking

---

### Summary
- INTERVAL enables date arithmetic
- Dates can be added or subtracted
- Useful for duration analysis
- Core analytics SQL skill
- Important interview topic
