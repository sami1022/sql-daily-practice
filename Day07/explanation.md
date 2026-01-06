## Day 07 – SQL Basics Revision (Conceptual Explanation)

This revision covers the core SQL concepts required to query and analyze data.
These fundamentals form the base for all advanced SQL topics.

---

### SELECT Statement
The SELECT statement is used to retrieve data from a database table.

Key points:
- Used to fetch one or more columns
- Can retrieve all columns using *
- Forms the base of every SQL query

---

### WHERE Clause
The WHERE clause is used to filter rows based on conditions.

Key points:
- Filters data before it is displayed
- Supports comparison operators (=, >, <, >=, <=)
- Commonly used with AND, OR, NOT
- Essential for conditional data analysis

---

### Logical Operators
Logical operators are used to combine multiple conditions.

- AND → all conditions must be true
- OR → at least one condition must be true
- NOT → negates a condition

Important notes:
- AND has higher precedence than OR
- Parentheses improve clarity and correctness
- Very commonly tested in interviews

---

### DISTINCT Keyword
DISTINCT removes duplicate rows from the result set.

Key points:
- Applies to all selected columns together
- Used to find unique values
- Commonly used with COUNT and ORDER BY
- Helps clean and summarize data

---

### ORDER BY Clause
ORDER BY is used to sort query results.

Key points:
- ASC for ascending order (default)
- DESC for descending order
- Supports multi-column sorting
- Always written at the end of a query
- Important for meaningful LIMIT results

---

### LIMIT Clause
LIMIT restricts the number of rows returned.

Key points:
- Controls result size
- Used for top-N or bottom-N queries
- Improves readability and performance
- Frequently used in dashboards

---

### OFFSET Clause
OFFSET skips a specified number of rows before returning results.

Key points:
- Used with LIMIT
- OFFSET starts from zero
- Essential for pagination
- Common in web and API applications

---

### Execution Order (Interview Favorite)
Logical execution order of SQL clauses:

1. FROM
2. WHERE
3. ORDER BY
4. LIMIT
5. OFFSET

Understanding this order helps write correct queries.

---

### Common Mistakes
- Using LIMIT without ORDER BY
- Forgetting parentheses in logical conditions
- Assuming OFFSET starts from 1
- Expecting SELECT * with DISTINCT to remove duplicates logically

---

### Summary
- SQL basics are the foundation of data analysis
- Proper filtering and sorting are critical
- Pagination improves usability
- These concepts are heavily tested in interviews
- Mastery of basics ensures smooth learning of advanced SQL
