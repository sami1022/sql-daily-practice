## Day 58 – UNION ALL (Conceptual Explanation)

UNION ALL combines results from multiple SELECT statements
without removing duplicates.

It is faster than UNION
because it skips duplicate elimination.

---

### Key Difference from UNION

UNION:
- Removes duplicates
- Requires extra sorting or hashing
- Slower on large datasets

UNION ALL:
- Keeps duplicates
- Faster performance
- Recommended when duplicates are acceptable

---

### Performance Advantage

UNION ALL:
- Avoids extra comparison step
- Uses simple concatenation
- Ideal for large-scale data systems

---

### When to Use UNION ALL

- Combining partitioned tables
- Appending datasets
- Data warehousing pipelines
- ETL processes

---

### Duplicate Handling

If duplicates must be removed:
- Use UNION
- Or use DISTINCT after UNION ALL

Example:
SELECT DISTINCT * FROM (...)

---

### Filtering Combined Data

Best practice:
- Use subquery
- Apply WHERE after combination
- Improves readability

---

### Common Mistakes

- Using UNION when duplicates are allowed
- Forgetting column compatibility
- Not understanding performance impact

---

### Real-World Use Cases

- Monthly sales merging
- Log file aggregation
- Combining multi-region data
- Data lake transformations

---

### Interview Questions

- Why is UNION ALL faster?
- When would you prefer UNION?
- How to remove duplicates after UNION ALL?
- Does UNION ALL sort data?

---

### Summary

- UNION ALL keeps duplicates
- Faster than UNION
- Useful in large datasets
- Important SQL set operation
- Strong interview topic
