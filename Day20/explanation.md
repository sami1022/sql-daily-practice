## Day 20 – Constraints Practice (Concept Recap)

This practice session reinforces the use of multiple
SQL constraints together to maintain strong data integrity.

---

### PRIMARY KEY
- Uniquely identifies each row
- Cannot contain NULL values
- Only one per table
- Can be single-column or composite

---

### FOREIGN KEY
- Establishes relationships between tables
- References a PRIMARY or UNIQUE key
- Ensures referential integrity
- Prevents orphan records

---

### UNIQUE Constraint
- Prevents duplicate values in a column
- Multiple UNIQUE constraints allowed per table
- Often used for emails, usernames, codes

---

### NOT NULL Constraint
- Ensures mandatory data is provided
- Prevents incomplete records
- Common for identifiers and essential fields

---

### CHECK Constraint
- Validates data against a condition
- Enforces business rules
- Applied during INSERT and UPDATE

---

### DEFAULT Constraint
- Assigns automatic values when none are provided
- Improves consistency
- Reduces need for explicit values

---

### Composite PRIMARY KEY
- Uses multiple columns to ensure uniqueness
- Common in mapping and junction tables
- Represents real-world relationships

---

### Why Constraints Matter
- Enforce data integrity at database level
- Reduce application-side validation
- Prevent invalid and duplicate data
- Improve reliability and consistency

---

### Common Mistakes
- Missing constraints during table design
- Overusing constraints without understanding requirements
- Confusing UNIQUE with PRIMARY KEY
- Ignoring referential integrity

---

### Summary
- Constraints protect data quality
- Multiple constraints often work together
- Essential for real-world database design
- Frequently tested in SQL interviews
- 
