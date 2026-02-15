## Day 47 – Data Cleaning (Real Scenarios)

### Problem Statement

You are given a table `customers` with the following columns:

- customer_id (INT)
- name (VARCHAR)
- email (VARCHAR)
- phone (VARCHAR)
- city (VARCHAR)
- signup_date (DATE)

The data contains inconsistencies such as:
- NULL values
- Extra spaces
- Mixed case letters
- Missing emails
- Invalid phone numbers

Write SQL queries to:

1. Remove extra spaces from names
2. Standardize city names (consistent casing)
3. Replace NULL emails with a default value
4. Identify invalid phone numbers (length check)
5. Clean and prepare data for reporting

Focus on practical data cleaning techniques.
