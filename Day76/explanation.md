## Day 76 – Transactions (Conceptual Explanation)

A transaction is a sequence
of one or more SQL operations
executed as a single unit.

Transactions ensure
data integrity and consistency.

---

### What is a Transaction?

A transaction groups multiple
operations together.

Either:
- All operations succeed
- Or none are applied

---

### BEGIN Statement

BEGIN starts a transaction.

After this:
- All changes are temporary
- Not saved permanently yet

---

### COMMIT Statement

COMMIT saves all changes
made during the transaction.

Once committed:
- Changes become permanent
- Cannot be undone easily

---

### Why Transactions Are Important

Transactions ensure:

- Data consistency
- Safe updates
- Error handling
- Reliable operations

---

### Atomicity Concept

Transactions follow atomicity:

"All or nothing"

If any step fails,
the entire transaction
should not be applied.

---

### Real-World Applications

Transactions are used in:

- Banking systems
- Payment processing
- Order management
- Inventory updates
- Financial systems

---

### Interview Importance

Common questions include:

- What is a transaction?
- Difference between COMMIT and ROLLBACK
- What is atomicity?
- Why transactions are important?

---

### Summary

Transaction:
- Group of SQL operations
- Ensures data consistency

BEGIN:
- Starts transaction

COMMIT:
- Saves changes permanently
