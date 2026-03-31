## Day 84 – Triggers (Conceptual Explanation)

A trigger is a database object
that automatically executes
when a specific event occurs.

Triggers help automate
database operations.

---

### What is a Trigger?

A trigger is fired when:

- INSERT occurs
- UPDATE occurs
- DELETE occurs

---

### Types of Triggers

BEFORE Trigger:
- Executes before the operation
- Used for validation

AFTER Trigger:
- Executes after the operation
- Used for logging and tracking

---

### Trigger Components

A trigger includes:

- Event (INSERT, UPDATE, DELETE)
- Timing (BEFORE or AFTER)
- Action (function or logic)

---

### NEW and OLD Keywords

NEW:
- Refers to new row values

OLD:
- Refers to existing row values

---

### Why Triggers Are Useful

Triggers help:

- enforce business rules
- automate logging
- maintain data integrity
- prevent invalid data

---

### Real-World Applications

Triggers are used in:

- audit logging
- financial systems
- inventory updates
- security checks

---

### Interview Importance

Common questions:

- What is a trigger?
- Difference between BEFORE and AFTER trigger
- When to use triggers
- Advantages and limitations

---

### Summary

Trigger:
- Automatic execution
- Event-based logic
- Improves automation

Types:
- BEFORE → validation
- AFTER → logging
