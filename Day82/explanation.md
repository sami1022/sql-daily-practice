## Day 82 – Stored Procedures (Conceptual Explanation)

A stored procedure is
a precompiled SQL program
stored in the database.

It can be executed
multiple times when needed.

---

### Why Stored Procedures Are Used

Stored procedures help:

- reuse SQL logic
- improve performance
- reduce network calls
- centralize business logic

---

### Basic Structure

CREATE PROCEDURE procedure_name(parameters)
BEGIN
    SQL statements
END;

---

### Parameters in Procedures

Procedures can accept:

- IN → input values
- OUT → output values
- INOUT → both input and output

---

### Execution

Procedures are executed using:

CALL procedure_name();

---

### Advantages

- Faster execution (precompiled)
- Better security
- Code reusability
- Reduced duplication

---

### Real-World Applications

Stored procedures are used in:

- Banking systems
- Financial calculations
- Business logic automation
- Backend database logic

---

### Interview Importance

Common questions:

- What is a stored procedure?
- Difference between procedure and function
- Advantages of stored procedures
- How parameters work

---

### Summary

Stored Procedure:
- Predefined SQL program
- Executed using CALL
- Supports parameters
- Improves performance and structure
