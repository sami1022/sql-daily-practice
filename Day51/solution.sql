-- 1. Create index on customer_id
CREATE INDEX idx_customer_id
ON orders(customer_id);

-- 2. Create composite index
CREATE INDEX idx_customer_orderdate
ON orders(customer_id, order_date);

-- 3. Create unique index
CREATE UNIQUE INDEX idx_unique_order
ON orders(order_id);

-- 4. Drop index
DROP INDEX idx_customer_id;

-- 5. Check query performance (example)
EXPLAIN
SELECT *
FROM orders
WHERE customer_id = 101;
