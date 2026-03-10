-- 1. Total spending per customer
SELECT customer_id,
SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id;

-- 2. Rank customers by spending
SELECT customer_id,
SUM(amount) AS total_spent,
RANK() OVER(ORDER BY SUM(amount) DESC) AS spending_rank
FROM orders
GROUP BY customer_id;

-- 3. Highest order per customer
SELECT *
FROM (
    SELECT order_id, customer_id, amount,
           ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY amount DESC) AS rank
    FROM orders
) ranked_orders
WHERE rank = 1;

-- 4. Running total per customer
SELECT order_id, customer_id, order_date, amount,
SUM(amount) OVER(PARTITION BY customer_id ORDER BY order_date) AS running_total
FROM orders;

-- 5. Previous order amount per customer
SELECT order_id, customer_id, amount,
LAG(amount) OVER(PARTITION BY customer_id ORDER BY order_date) AS previous_order
FROM orders;
