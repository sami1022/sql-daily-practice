## Day 16 – FOREIGN KEY (Relationships)

A FOREIGN KEY is a database constraint used to establish
and enforce a relationship between two tables.

It ensures referential integrity in relational databases.

---

### What is a FOREIGN KEY?
A FOREIGN KEY is a column or set of columns in one table
that refers to the PRIMARY KEY of another table.

Key characteristics:
- Maintains relationships between tables
- Prevents invalid references
- Ensures data consistency
- Enforces referential integrity

---

### Parent and Child Tables
- Parent table: contains the PRIMARY KEY
- Child table: contains the FOREIGN KEY
- FOREIGN KEY values must exist in the parent table

---

### Why FOREIGN KEY is Important
- Prevents orphan records
- Ensures data accuracy
- Maintains logical relationships
- Essential for relational database design

---

### FOREIGN KEY with Constraints
FOREIGN KEY works closely with:
- PRIMARY KEY
- UNIQUE constraint

It cannot reference columns without uniqueness.

---

### Referential Integrity
Referential integrity ensures:
- Child rows always reference valid parent rows
- Database remains consistent
- Relationships are preserved

---

### Common Mistakes
- Referencing non-primary key columns
- Mismatched data types between keys
- Forgetting to add FOREIGN KEY constraints
- Deleting parent records without handling child records

---

### Real-World Applications
- Student and enrollment systems
- Orders and customers
- Employees and departments
- Products and categories

---

### Summary
- FOREIGN KEY enforces table relationships
- References PRIMARY KEY in another table
- Prevents invalid data insertion
- Core concept in database design
- Frequently tested in SQL interviews
- 
