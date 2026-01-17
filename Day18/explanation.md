## Day 18 – CHECK & DEFAULT (Validation Constraints)

CHECK and DEFAULT are validation constraints used to
control the quality and consistency of data stored in a database.

They help enforce business rules directly at the database level.

---

### CHECK Constraint
CHECK is used to restrict the range of values allowed in a column.

Key points:
- Ensures values meet specific conditions
- Prevents invalid data insertion or updates
- Can be applied to numeric, string, and logical conditions
- Enforced during INSERT and UPDATE operations

Examples of validation:
- Age must be greater than or equal to 18
- Salary must be positive
- Status must match allowed values

---

### DEFAULT Constraint
DEFAULT assigns a predefined value to a column
when no value is provided during insertion.

Key points:
- Automatically fills missing values
- Simplifies INSERT statements
- Ensures consistency for optional fields
- Can be overridden by explicit values

---

### Why CHECK & DEFAULT Are Important
- Enforce business rules at the database level
- Reduce dependency on application-side validation
- Improve data accuracy and consistency
- Prevent invalid or incomplete records

---

### CHECK vs WHERE
- CHECK validates column values
- WHERE filters query results
- CHECK applies during data modification, not querying

---

### Common Mistakes
- Using CHECK for complex logic better handled in application code
- Forgetting DEFAULT for frequently missing values
- Assuming DEFAULT applies when NULL is explicitly inserted
- Overlooking CHECK constraints during updates

---

### Real-World Applications
- Age and salary validation
- Status fields with fixed defaults
- Product price validation
- Business rule enforcement

---

### Summary
- CHECK validates column values
- DEFAULT assigns automatic values
- Both improve data quality
- Enforce rules at the database level
- Important for database design and SQL interviews
