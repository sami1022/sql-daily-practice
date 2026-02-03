## Day 36 – String Functions (Conceptual Explanation)

String functions are used to manipulate
and format text data stored in SQL tables.

They are essential for data cleaning,
standardization, and case-insensitive comparisons.

---

### UPPER Function
UPPER converts all characters in a string
to uppercase.

Key points:
- Helps standardize text
- Useful for comparisons
- Often used in reporting
- Improves data consistency

---

### LOWER Function
LOWER converts all characters in a string
to lowercase.

Key points:
- Used for case-insensitive matching
- Helpful in filtering data
- Common in data cleaning
- Ensures uniform text format

---

### Why Case Conversion is Important
- Databases may store text inconsistently
- Comparisons can fail due to case differences
- Standardization improves accuracy
- Important for user input validation

---

### Using UPPER and LOWER in WHERE
- Enables case-insensitive searches
- Prevents missing records due to casing
- Common practice in SQL queries

---

### Performance Considerations
- Applying functions may affect index usage
- Best to standardize data at insertion time
- Use functions carefully on large datasets

---

### Common Mistakes
- Assuming text comparison is case-insensitive
- Overusing functions in WHERE clause
- Ignoring data standardization
- Forgetting function behavior on NULL values

---

### Real-World Applications
- Cleaning customer names
- Standardizing city and country values
- Case-insensitive search features
- Preparing data for analytics

---

### Summary
- UPPER converts text to uppercase
- LOWER converts text to lowercase
- Essential for string standardization
- Widely used in data cleaning
- Important SQL interview topic

