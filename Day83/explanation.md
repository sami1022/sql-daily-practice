## Day 83 – Functions (Conceptual Explanation)

A function is a reusable SQL block
that returns a value.

Functions are used
inside queries.

---

### Function vs Stored Procedure

Function:
- Returns a value
- Can be used in SELECT

Stored Procedure:
- Performs actions
- Does not return value directly

---

### Basic Structure

CREATE FUNCTION function_name(parameters)
RETURNS datatype
AS $$
    SQL query
$$;

---

### Why Functions Are Useful

Functions help:

- reuse logic
- simplify queries
- perform calculations
- improve readability

---

### Parameters

Functions accept input parameters
to make them dynamic.

Example:
get_balance(account_id)

---

### Return Value

Functions always return
a single value.

This makes them useful
for calculations and checks.

---

### Real-World Applications

Functions are used in:

- financial calculations
- validation logic
- reporting queries
- business rule implementation

---

### Interview Importance

Common questions:

- Difference between function and procedure
- Can functions be used in SELECT?
- What does a function return?

---

### Summary

Function:
- Returns value
- Used in queries
- Supports parameters
- Helps modular SQL design
