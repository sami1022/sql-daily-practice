## Day 77 – ROLLBACK (Conceptual Explanation)

ROLLBACK is used
to undo changes
made during a transaction.

It ensures that
incorrect or incomplete operations
do not affect the database.

---

### What is ROLLBACK?

ROLLBACK cancels
all changes made
since the last BEGIN.

The database returns
to its previous state.

---

### ROLLBACK vs COMMIT

COMMIT:
- Saves changes permanently

ROLLBACK:
- Discards changes

---

### Why ROLLBACK is Important

ROLLBACK helps:

- Prevent incorrect updates
- Maintain data integrity
- Handle errors safely
- Ensure consistency

---

### Failure Scenarios

ROLLBACK is used when:

- Errors occur during execution
- Data validation fails
- System crashes
- Logical conditions fail

---

### Transaction Safety

Using BEGIN + COMMIT + ROLLBACK ensures:

- Controlled updates
- Safe execution
- Error recovery

---

### Real-World Applications

ROLLBACK is used in:

- Banking transactions
- Payment systems
- Inventory updates
- Order processing systems

---

### Interview Importance

Common questions:

- Difference between COMMIT and ROLLBACK
- What happens if a transaction fails?
- When should ROLLBACK be used?

---

### Summary

ROLLBACK:
- Cancels transaction changes
- Restores previous state
- Ensures safe data handling

Transactions become reliable
when ROLLBACK is used properly.
