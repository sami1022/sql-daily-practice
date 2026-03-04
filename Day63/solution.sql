-- UNION example
SELECT customer_id FROM online_customers
UNION
SELECT customer_id FROM store_customers;

-- UNION ALL example
SELECT customer_id FROM online_customers
UNION ALL
SELECT customer_id FROM store_customers;

-- INTERSECT example
SELECT customer_id FROM online_customers
INTERSECT
SELECT customer_id FROM store_customers;

-- EXCEPT example
SELECT customer_id FROM online_customers
EXCEPT
SELECT customer_id FROM store_customers;

-- Mixed set operation example
SELECT customer_id FROM online_customers
INTERSECT
SELECT customer_id FROM store_customers
EXCEPT
SELECT customer_id FROM blocked_customers;
