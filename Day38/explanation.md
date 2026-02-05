## Day 38 – LIKE (Conceptual Explanation)

The LIKE operator is used for pattern matching
in SQL text data.

It allows searching for specific patterns
within string columns using wildcards.

---

### What is LIKE?
LIKE compares a string value
against a pattern.

It is commonly used with:
- Names
- Emails
- Addresses
- Text-based attributes

---

### Wildcards Used with LIKE

#### Percent (%)
- Matches zero or more characters
- Used for flexible matching
- Can appear at start, end, or middle

#### Underscore (_)
- Matches exactly one character
- Useful for fixed-length patterns

---

### Case Sensitivity
- LIKE behavior depends on database
- Some databases are case-sensitive
- UPPER or LOWER can be used for consistency

---

### LIKE vs Equals (=)
- = matches exact value
- LIKE matches patterns
- LIKE is more flexible
- = is faster for exact matches

---

### Performance Considerations
- Leading wildcard (%abc) reduces index usage
- LIKE on large tables can be slow
- Use indexes where possible
- Avoid unnecessary pattern matching

---

### Common Mistakes
- Forgetting wildcard characters
- Using LIKE for exact matches
- Ignoring case sensitivity
- Overusing LIKE in large datasets

---

### Real-World Applications
- Search functionality
- Email filtering
- Name-based queries
- Data cleaning tasks

---

### Summary
- LIKE is used for pattern matching
- % matches multiple characters
- _ matches a single character
- Useful for flexible text search
- Important SQL interview topic
