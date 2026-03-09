-- 1. Running total of sales
SELECT sale_id, sale_date, amount,
SUM(amount) OVER(ORDER BY sale_date) AS running_total
FROM sales;

-- 2. Running total per employee
SELECT sale_id, employee_id, sale_date, amount,
SUM(amount) OVER(PARTITION BY employee_id ORDER BY sale_date) AS employee_running_total
FROM sales;

-- 3. Running average of sales
SELECT sale_id, sale_date, amount,
AVG(amount) OVER(ORDER BY sale_date) AS running_average
FROM sales;

-- 4. Cumulative sales per region
SELECT sale_id, region, sale_date, amount,
SUM(amount) OVER(PARTITION BY region ORDER BY sale_date) AS region_running_total
FROM sales;

-- 5. Compare sale with cumulative total
SELECT sale_id, amount,
SUM(amount) OVER(ORDER BY sale_date) - amount AS previous_cumulative_total
FROM sales;
