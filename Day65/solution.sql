-- 1. Rank sales by amount
SELECT sale_id, employee_id, amount,
RANK() OVER(ORDER BY amount DESC) AS sales_rank
FROM sales;

-- 2. Dense rank sales
SELECT sale_id, employee_id, amount,
DENSE_RANK() OVER(ORDER BY amount DESC) AS dense_rank
FROM sales;

-- 3. Rank sales per region
SELECT sale_id, employee_id, region, amount,
RANK() OVER(PARTITION BY region ORDER BY amount DESC) AS region_rank
FROM sales;

-- 4. Top 3 sales per region
SELECT *
FROM (
    SELECT sale_id, employee_id, region, amount,
           RANK() OVER(PARTITION BY region ORDER BY amount DESC) AS rnk
    FROM sales
) ranked_sales
WHERE rnk <= 3;

-- 5. Compare ranking methods
SELECT sale_id, amount,
RANK() OVER(ORDER BY amount DESC) AS rank_value,
DENSE_RANK() OVER(ORDER BY amount DESC) AS dense_rank_value
FROM sales;
