## Day 19 – Composite Keys (Multi-column PRIMARY KEY)

A composite key is a PRIMARY KEY made up of two or more columns.
It is used when a single column cannot uniquely identify a record.

Composite keys are common in relational database design,
especially in mapping and junction tables.

---

### What is a Composite Key?
A composite key is a combination of multiple columns
that together uniquely identify a row in a table.

Key points:
- Formed using two or more columns
- Each column alone may not be unique
- The combination must be unique
- Defined as a single PRIMARY KEY constraint

---

### Why Composite Keys Are Needed
- Some entities are identified by relationships
- Prevents duplicate combinations
- Ensures logical uniqueness
- Avoids unnecessary surrogate keys

---

### Composite Key vs Single-column PRIMARY KEY
- Single-column PK:
  - One column uniquely identifies rows
- Composite PK:
  - Multiple columns together identify rows
  - Common in many-to-many relationships

---

### Composite Keys and FOREIGN KEY
- Composite keys can be referenced by FOREIGN KEY constraints
- Child tables must reference all columns of the composite key
- Data types and order must match exactly

---

### Advantages of Composite Keys
- Enforces real-world business rules
- Prevents duplicate relationships
- Reduces redundancy
- Maintains data integrity

---

### Common Mistakes
- Using composite keys when a single column is sufficient
- Forgetting column order in composite keys
- Not indexing composite key columns properly
- Making composite keys too large

---

### Real-World Applications
- Student-course enrollments
- Order-product relationships
- Employee-project assignments
- Many-to-many relationship tables

---

### Summary
- Composite keys use multiple columns as PRIMARY KEY
- Ensure uniqueness through combinations
- Common in relational database design
- Essential for mapping tables
- Frequently tested in SQL interviews
