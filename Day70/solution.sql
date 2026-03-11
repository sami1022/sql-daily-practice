-- ROW_NUMBER example
SELECT order_id, customer_id, amount,
ROW_NUMBER() OVER(ORDER BY amount DESC) AS row_num
FROM orders;

-- RANK example
SELECT customer_id, SUM(amount) AS total_spent,
RANK() OVER(ORDER BY SUM(amount) DESC) AS spending_rank
FROM orders
GROUP BY customer_id;

-- DENSE_RANK example
SELECT customer_id, SUM(amount) AS total_spent,
DENSE_RANK() OVER(ORDER BY SUM(amount) DESC) AS dense_rank
FROM orders
GROUP BY customer_id;

-- LAG example
SELECT order_id, customer_id, amount,
LAG(amount) OVER(ORDER BY order_date) AS previous_order
FROM orders;

-- LEAD example
SELECT order_id, customer_id, amount,
LEAD(amount) OVER(ORDER BY order_date) AS next_order
FROM orders;

-- Running total example
SELECT order_id, amount,
SUM(amount) OVER(ORDER BY order_date) AS running_total
FROM orders;
