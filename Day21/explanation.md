## Day 21 – Constraints Recap (Conceptual Explanation)

SQL constraints are rules applied to table columns
to ensure data accuracy, consistency, and reliability.

They enforce business logic at the database level
and are critical for relational database design.

---

### PRIMARY KEY
- Uniquely identifies each row in a table
- Cannot contain NULL values
- Only one PRIMARY KEY per table
- May consist of one or multiple columns

---

### FOREIGN KEY
- Establishes relationships between tables
- References a PRIMARY or UNIQUE key in another table
- Enforces referential integrity
- Prevents invalid references

---

### UNIQUE Constraint
- Ensures column values are unique
- Multiple UNIQUE constraints allowed
- May allow NULL values (DB-dependent)
- Commonly used for emails and usernames

---

### NOT NULL Constraint
- Prevents NULL values in a column
- Ensures mandatory data is provided
- Used for essential fields

---

### CHECK Constraint
- Validates data using conditions
- Enforces business rules
- Applied during INSERT and UPDATE

---

### DEFAULT Constraint
- Assigns automatic values when none are provided
- Ensures consistency
- Simplifies data insertion

---

### Composite PRIMARY KEY
- Uses multiple columns to ensure uniqueness
- Common in junction and mapping tables
- Represents real-world relationships

---

### Why Constraints Are Important
- Enforce data integrity
- Prevent duplicate and invalid data
- Reduce application-side validation
- Improve database reliability

---

### Common Mistakes
- Forgetting constraints during table design
- Confusing UNIQUE with PRIMARY KEY
- Ignoring referential integrity
- Overusing constraints without understanding requirements

---

### Summary
- Constraints protect data quality
- Multiple constraints often work together
- Essential for real-world databases
- Frequently tested in SQL interviews
