-- 1. Total sales per region
SELECT sale_id, region, amount,
SUM(amount) OVER(PARTITION BY region) AS total_region_sales
FROM sales;

-- 2. Average sales per employee
SELECT sale_id, employee_id, amount,
AVG(amount) OVER(PARTITION BY employee_id) AS avg_employee_sales
FROM sales;

-- 3. Rank employees within region
SELECT sale_id, employee_id, region, amount,
RANK() OVER(PARTITION BY region ORDER BY amount DESC) AS region_rank
FROM sales;

-- 4. Highest sale per region
SELECT *
FROM (
    SELECT sale_id, region, amount,
           ROW_NUMBER() OVER(PARTITION BY region ORDER BY amount DESC) AS rank
    FROM sales
) ranked_sales
WHERE rank = 1;

-- 5. Compare with region average
SELECT sale_id, region, amount,
amount - AVG(amount) OVER(PARTITION BY region) AS difference_from_region_avg
FROM sales;
