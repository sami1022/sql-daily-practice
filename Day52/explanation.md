## Day 52 – Index Usage & Performance (Conceptual Explanation)

Indexes improve query performance,
but only when used correctly.

Understanding how indexes work
is essential for performance tuning.

---

### How Database Uses Index

When a query runs:
- Optimizer checks available indexes
- Chooses lowest-cost execution plan
- May use index scan or table scan

EXPLAIN shows this execution plan.

---

### Indexed Column Filtering

Indexes are used when:
- Column appears in WHERE clause
- Column appears in JOIN condition
- Column appears in ORDER BY

Equality comparisons use index efficiently.

---

### Composite Index Rule

Composite index follows left-to-right rule.

Example:
Index(customer_id, order_date)

Works for:
- customer_id
- customer_id + order_date

Does NOT work efficiently for:
- order_date alone

---

### Index Scan vs Full Table Scan

Index Scan:
- Faster
- Uses index lookup

Full Table Scan:
- Reads entire table
- Slower on large datasets

---

### Range Conditions

Range queries (> , < , BETWEEN):
- Can use index
- But may scan more rows
- Efficiency depends on data distribution

---

### Why Index Might Not Be Used

- Function applied on column
- Low selectivity column
- Small table size
- Incorrect index order

---

### Performance Trade-Off

Indexes:
- Improve SELECT speed
- Slow down INSERT/UPDATE/DELETE
- Consume storage space

Balance is important.

---

### Real-World Importance

- Production databases
- Large-scale applications
- Data warehouse systems
- High-traffic web apps

---

### Interview Tip

If asked:
“How to optimize a slow query?”

Answer:
- Check EXPLAIN
- Add proper indexes
- Avoid full table scans
- Optimize WHERE conditions

---

### Summary

- Index improves performance
- Must understand optimizer behavior
- Composite index follows order rule
- EXPLAIN is key tool
- Core performance concept
