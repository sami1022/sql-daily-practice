-- 1. Assign row numbers to all rows
SELECT sale_id, employee_id, amount,
ROW_NUMBER() OVER() AS row_num
FROM sales;

-- 2. Row numbers ordered by amount
SELECT sale_id, employee_id, amount,
ROW_NUMBER() OVER(ORDER BY amount DESC) AS sales_rank
FROM sales;

-- 3. Row numbers per region
SELECT sale_id, employee_id, region, amount,
ROW_NUMBER() OVER(PARTITION BY region ORDER BY amount DESC) AS region_rank
FROM sales;

-- 4. Top sale per region
SELECT *
FROM (
    SELECT sale_id, employee_id, region, amount,
           ROW_NUMBER() OVER(PARTITION BY region ORDER BY amount DESC) AS rank
    FROM sales
) ranked_sales
WHERE rank = 1;

-- 5. Latest sale per employee
SELECT *
FROM (
    SELECT sale_id, employee_id, sale_date,
           ROW_NUMBER() OVER(PARTITION BY employee_id ORDER BY sale_date DESC) AS latest
    FROM sales
) latest_sales
WHERE latest = 1;
