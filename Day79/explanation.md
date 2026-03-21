## Day 79 – Locks (Conceptual Explanation)

Locks are mechanisms
used by databases
to control access
to data during transactions.

They prevent conflicts
when multiple users
access the same data.

---

### Why Locks Are Needed

Without locks:
- Data may become inconsistent
- Transactions may interfere
- Incorrect results may occur

Locks ensure safe concurrent access.

---

### Types of Locks

#### 1. Shared Lock (Read Lock)

- Allows multiple users to read data
- Prevents data modification
- Used for SELECT queries

---

#### 2. Exclusive Lock (Write Lock)

- Allows only one transaction
- Prevents both read and write by others
- Used for INSERT, UPDATE, DELETE

---

### Concurrency Issues

Common problems:

- Dirty Read → Reading uncommitted data
- Non-repeatable Read → Data changes during transaction
- Phantom Read → New rows appear unexpectedly

---

### Locking Behavior

When a transaction:

- Reads data → shared lock
- Writes data → exclusive lock

Locks are released after:
- COMMIT
- ROLLBACK

---

### Real-World Applications

Locks are used in:

- Banking systems
- Inventory systems
- Booking systems
- Multi-user applications

---

### Interview Importance

Common questions:

- What are locks in DBMS?
- Difference between shared and exclusive locks
- What are concurrency issues?
- How databases ensure consistency?

---

### Summary

Locks:
- Control concurrent access
- Ensure data consistency

Shared Lock:
- Read only

Exclusive Lock:
- Read + Write control

Locks are essential
for safe multi-user database operations.
