## Day 17 – UNIQUE & NOT NULL (Data Integrity Constraints)

UNIQUE and NOT NULL are database constraints used to
maintain accuracy, consistency, and reliability of data.

They enforce rules at the database level and prevent invalid data entry.

---

### NOT NULL Constraint
NOT NULL ensures that a column cannot contain NULL values.

Key points:
- Mandatory data must always be provided
- Prevents incomplete records
- Commonly used for essential fields like names, emails, IDs
- Enforced during INSERT and UPDATE operations

---

### UNIQUE Constraint
UNIQUE ensures that all values in a column (or combination of columns)
are distinct.

Key points:
- Prevents duplicate values
- Multiple UNIQUE constraints can exist in a table
- Allows NULL values (database-dependent)
- Automatically creates a unique index

---

### UNIQUE vs PRIMARY KEY
- PRIMARY KEY:
  - Only one per table
  - Does not allow NULL values
- UNIQUE:
  - Multiple allowed per table
  - May allow NULL values

---

### Why These Constraints Are Important
- Enforce data integrity
- Prevent duplicate and missing data
- Reduce application-level validation
- Improve database reliability

---

### Composite UNIQUE Constraint
UNIQUE can be applied to multiple columns together.

Key points:
- Ensures unique combinations
- Common in user-role or mapping tables
- Helps prevent logical duplicates

---

### Common Mistakes
- Assuming UNIQUE never allows NULL
- Forgetting to add NOT NULL on critical columns
- Relying only on application validation
- Overusing UNIQUE where PRIMARY KEY is more suitable

---

### Real-World Applications
- Email and username uniqueness
- Mandatory profile fields
- Account and login systems
- Business rule enforcement

---

### Summary
- NOT NULL prevents missing values
- UNIQUE prevents duplicate values
- Both improve data quality
- Essential for database design
- Frequently tested in SQL interviews
