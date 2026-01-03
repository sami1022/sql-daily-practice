### Explanation

- DISTINCT is used to remove duplicate values from the result set.
- It applies to **all columns** listed in the SELECT clause.
- When multiple columns are used with DISTINCT, the combination of values must be unique.
- DISTINCT is commonly used with:
  - SELECT
  - COUNT
  - ORDER BY
- COUNT(DISTINCT column) is frequently asked in SQL interviews.

Common Interview Traps:
- DISTINCT applies to the entire row, not a single column
- DISTINCT cannot be used directly with SELECT *
- ORDER BY columns must appear in SELECT when DISTINCT is used (in some databases)

DISTINCT helps clean data and is widely used in analytics queries.
