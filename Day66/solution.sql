-- 1. Previous sale amount using LAG
SELECT sale_id, employee_id, amount,
LAG(amount) OVER(ORDER BY sale_date) AS previous_sale
FROM sales;

-- 2. Next sale amount using LEAD
SELECT sale_id, employee_id, amount,
LEAD(amount) OVER(ORDER BY sale_date) AS next_sale
FROM sales;

-- 3. Difference between current and previous sale
SELECT sale_id, amount,
amount - LAG(amount) OVER(ORDER BY sale_date) AS sales_difference
FROM sales;

-- 4. Compare consecutive sales
SELECT sale_id, sale_date, amount,
LAG(amount) OVER(ORDER BY sale_date) AS previous_sale,
LEAD(amount) OVER(ORDER BY sale_date) AS next_sale
FROM sales;

-- 5. Previous sale per employee
SELECT sale_id, employee_id, amount,
LAG(amount) OVER(PARTITION BY employee_id ORDER BY sale_date) AS previous_employee_sale
FROM sales;
