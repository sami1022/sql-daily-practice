## Day 43 – CASE WHEN (Conceptual Explanation)

CASE WHEN is used to implement
conditional logic inside SQL queries.

It works similarly to IF-ELSE
statements in programming languages.

---

### What is CASE WHEN?
CASE evaluates conditions
and returns values based on those conditions.

Structure:
CASE
    WHEN condition THEN result
    WHEN condition THEN result
    ELSE result
END

---

### Why CASE WHEN is Important
- Enables dynamic categorization
- Converts numeric values into labels
- Helps create business logic
- Used in analytics dashboards

---

### Where CASE Can Be Used
- SELECT clause
- ORDER BY clause
- GROUP BY clause
- HAVING clause

---

### Types of CASE
1. Simple CASE
   - Compares one expression
2. Searched CASE
   - Uses multiple conditions

---

### Execution Logic
- Conditions are checked sequentially
- First TRUE condition is executed
- ELSE handles unmatched cases

---

### Performance Considerations
- CASE is lightweight
- Safe for most datasets
- Avoid overly complex nested CASE

---

### Common Mistakes
- Forgetting END keyword
- Incorrect condition order
- Missing ELSE clause
- Overcomplicating logic

---

### Real-World Applications
- Grade assignment
- Risk categorization
- Revenue segmentation
- KPI dashboards

---

### Summary
- CASE implements conditional logic
- Similar to IF-ELSE
- Essential for analytics queries
- Very common interview topic
- Core SQL transformation tool
