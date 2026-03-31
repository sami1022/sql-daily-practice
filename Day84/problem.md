## Day 84 – Triggers (Automation in DB)

### Problem Statement

You are given two tables:

**accounts**
- account_id (INT)
- account_name (VARCHAR)
- balance (DECIMAL)

**transactions**
- transaction_id (INT)
- account_id (INT)
- amount (DECIMAL)
- transaction_date (DATE)

Write SQL queries to:

1. Create a trigger to log transactions after insert
2. Create a trigger to update balance after transaction
3. Use BEFORE and AFTER triggers
4. Prevent invalid transactions using triggers
5. Understand trigger behavior

Focus on automating database actions using triggers.
