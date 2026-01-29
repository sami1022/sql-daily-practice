## Day 30 – Subquery in WHERE (IN, EXISTS)

Subqueries inside the WHERE clause are used
to filter rows based on the result of another query.

IN and EXISTS are the most commonly used
subquery operators in SQL.

---

### IN Operator
IN checks whether a value matches
any value returned by a subquery.

Key points:
- Used with subqueries returning multiple values
- Simple and readable
- Can be inefficient for large datasets

---

### NOT IN Operator
NOT IN excludes values returned by a subquery.

Key points:
- Returns rows not present in the subquery result
- NULL values in subquery can cause unexpected results
- Requires careful NULL handling

---

### EXISTS Operator
EXISTS checks whether a subquery returns any rows.

Key points:
- Returns TRUE if at least one row exists
- Stops processing once a match is found
- Often more efficient than IN for large datasets

---

### NOT EXISTS Operator
NOT EXISTS returns TRUE if the subquery returns no rows.

Key points:
- Commonly used to find missing relationships
- Safer than NOT IN when NULLs exist
- Frequently used with correlated subqueries

---

### IN vs EXISTS
- IN compares values
- EXISTS checks for existence
- EXISTS is usually faster for large tables
- Choice depends on data size and NULL handling

---

### Common Mistakes
- Using NOT IN with NULL values
- Forgetting correlation in EXISTS
- Overusing subqueries where JOIN is better
- Writing unreadable nested subqueries

---

### Real-World Applications
- Finding enrolled or non-enrolled users
- Filtering based on related records
- Data validation checks
- Business logic enforcement

---

### Summary
- IN filters based on list of values
- EXISTS checks presence of rows
- Subqueries in WHERE enable advanced filtering
- Important concept for SQL interviews
- Foundation for complex SQL logic
