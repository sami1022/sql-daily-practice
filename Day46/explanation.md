## Day 46 – IS NULL (Conceptual Explanation)

NULL represents missing or unknown data.

To check NULL values in SQL,
we must use special operators.

---

### Why = NULL Does Not Work

In SQL:
value = NULL → does NOT return TRUE
value <> NULL → does NOT return TRUE

Because NULL means unknown,
any comparison with NULL results in UNKNOWN.

---

### IS NULL Operator

IS NULL checks whether a value is NULL.

Syntax:
column_name IS NULL

Used to:
- Find missing values
- Detect incomplete records
- Clean datasets

---

### IS NOT NULL Operator

IS NOT NULL checks whether a value exists.

Syntax:
column_name IS NOT NULL

Used to:
- Filter valid records
- Ensure data completeness
- Apply business rules

---

### Why NULL Checks Matter

- NULL affects calculations
- NULL impacts filtering
- NULL can change query results
- Important in reporting accuracy

---

### NULL in Logical Conditions

NULL in AND/OR conditions:
- Can produce unexpected results
- Must be handled carefully
- Often combined with COALESCE

---

### Best Practices

- Always use IS NULL / IS NOT NULL
- Handle NULL before aggregation
- Check NULL impact in WHERE
- Be cautious in joins

---

### Common Mistakes

- Using = NULL
- Ignoring NULL in filtering
- Forgetting NULL in joins
- Misunderstanding NULL logic

---

### Real-World Applications

- Detect incomplete customer records
- Identify missing transactions
- Data quality audits
- Compliance checks

---

### Summary

- NULL means missing/unknown
- Use IS NULL for checking
- Use IS NOT NULL for valid values
- Critical for accurate SQL queries
- Frequently tested in interviews
