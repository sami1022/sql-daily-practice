## Day 15 – PRIMARY KEY (Constraints)

A PRIMARY KEY is a database constraint used to uniquely identify
each record in a table. It plays a critical role in maintaining
data integrity.

---

### What is a PRIMARY KEY?
A PRIMARY KEY is a column or a combination of columns
that uniquely identifies each row in a table.

Key characteristics:
- Must contain unique values
- Cannot contain NULL values
- Only one PRIMARY KEY per table
- Automatically creates a unique index

---

### Why PRIMARY KEY is Important
- Prevents duplicate records
- Ensures each row can be uniquely identified
- Helps establish relationships between tables
- Improves query performance through indexing

---

### PRIMARY KEY vs UNIQUE
- PRIMARY KEY:
  - Only one allowed per table
  - Does not allow NULL values
- UNIQUE:
  - Multiple UNIQUE constraints allowed
  - May allow NULL values (DB-dependent)

---

### Composite PRIMARY KEY
A PRIMARY KEY can be made using more than one column.

Key points:
- Used when a single column is not sufficient
- Combination of columns must be unique
- Common in junction or mapping tables

---

### PRIMARY KEY and Data Integrity
- Enforces entity integrity
- Prevents invalid or duplicate data
- Forms the base for FOREIGN KEY relationships

---

### Common Mistakes
- Using non-unique columns as PRIMARY KEY
- Changing PRIMARY KEY values frequently
- Using meaningful data instead of surrogate keys
- Forgetting PRIMARY KEY during table design

---

### Real-World Applications
- Student ID in student tables
- Employee ID in employee tables
- Order ID in sales systems
- User ID in applications

---

### Summary
- PRIMARY KEY uniquely identifies rows
- Cannot contain NULL or duplicate values
- Essential for relational database design
- Core concept for SQL interviews and real systems
