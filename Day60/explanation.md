## Day 60 – EXCEPT (Conceptual Explanation)

EXCEPT returns rows from the first SELECT
that do not exist in the second SELECT.

It performs set difference operation.

---

### How EXCEPT Works

- Compares rows from two SELECT statements
- Returns rows only in the first result
- Removes duplicates automatically

---

### Column Rules

Both SELECT statements must:
- Have same number of columns
- Follow same column order
- Have compatible data types

---

### EXCEPT vs LEFT JOIN

EXCEPT:
- Simpler syntax
- Removes duplicates
- Compares full rows

LEFT JOIN:
- More flexible
- Allows partial column comparison
- More commonly supported

---

### Duplicate Handling

EXCEPT:
- Removes duplicate rows
- Behaves similar to DISTINCT

---

### Performance Considerations

- May use sorting or hashing
- Can be heavy on large datasets
- Depends on database engine

---

### When to Use EXCEPT

- Data comparison
- Finding missing records
- Data reconciliation
- Audit checks

---

### Real-World Applications

- Customers active in one channel only
- Missing records detection
- Migration validation
- System comparison

---

### Common Mistakes

- Reversing order accidentally
- Mismatched column structure
- Expecting partial matching

---

### Interview Questions

- Difference between EXCEPT and NOT EXISTS?
- Does EXCEPT remove duplicates?
- Is EXCEPT supported in MySQL?
- How to simulate EXCEPT in unsupported databases?

---

### Summary

- EXCEPT returns difference between sets
- Removes duplicates automatically
- Requires matching column structure
- Useful for dataset comparison
- Important SQL set operation
