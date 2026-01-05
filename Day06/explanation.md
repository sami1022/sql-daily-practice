## Day 06 – LIMIT & OFFSET (Pagination)

### LIMIT Clause
The LIMIT clause is used to restrict the number of rows returned by a SQL query.  
It helps control the size of the result set and is commonly used in reporting, dashboards, and applications.

Key points:
- LIMIT defines the maximum number of rows to display
- It improves readability and performance
- Often used with ORDER BY and WHERE
- Useful for retrieving top N or bottom N records

---

### OFFSET Clause
The OFFSET clause is used to skip a specified number of rows before returning the result set.  
It is mainly used for pagination.

Key points:
- OFFSET starts counting from zero
- It skips rows before LIMIT is applied
- OFFSET is always used together with LIMIT
- Helps retrieve data page by page

---

### LIMIT and OFFSET Together
LIMIT and OFFSET are frequently used together to implement pagination.

Key points:
- LIMIT controls how many rows are returned
- OFFSET controls where the result set begins
- Commonly used in web applications and APIs

---

### ORDER BY with LIMIT & OFFSET
LIMIT and OFFSET should always be used with ORDER BY.

Reasons:
- SQL tables do not store data in a fixed order
- ORDER BY ensures consistent and meaningful results
- Without ORDER BY, results may be unpredictable

---

### Execution Order of Clauses
The logical execution order of SQL clauses is:
1. FROM  
2. WHERE  
3. ORDER BY  
4. LIMIT  
5. OFFSET  

Understanding this order helps avoid logical errors in queries.

---

### Performance Considerations
- OFFSET can be slow on large datasets
- Skipping many rows still requires scanning them
- Indexing ORDER BY columns improves performance
- For very large datasets, keyset pagination is preferred

---

### Common Mistakes
- Using LIMIT without ORDER BY
- Assuming OFFSET starts from 1 instead of 0
- Using OFFSET alone without LIMIT
- Expecting LIMIT to guarantee row order

---

### Real-World Applications
- Pagination in web pages
- API response limits
- Dashboard summaries
- Ranking and leaderboard systems

---

### Summary
- LIMIT restricts the number of rows returned
- OFFSET skips rows before returning results
- Both are essential for pagination
- ORDER BY ensures reliable output
- Frequently tested in SQL interviews
