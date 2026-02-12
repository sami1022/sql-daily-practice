-- 1. Categorize sales
SELECT 
    sale_id,
    amount,
    CASE 
        WHEN amount >= 10000 THEN 'High'
        WHEN amount >= 5000 THEN 'Medium'
        ELSE 'Low'
    END AS sale_category
FROM sales;

-- 2. Count sales in each category
SELECT 
    CASE 
        WHEN amount >= 10000 THEN 'High'
        WHEN amount >= 5000 THEN 'Medium'
        ELSE 'Low'
    END AS sale_category,
    COUNT(*) AS total_sales
FROM sales
GROUP BY sale_category;

-- 3. Total revenue by category
SELECT 
    CASE 
        WHEN amount >= 10000 THEN 'High'
        WHEN amount >= 5000 THEN 'Medium'
        ELSE 'Low'
    END AS sale_category,
    SUM(amount) AS total_revenue
FROM sales
GROUP BY sale_category;

-- 4. Count high-value transactions
SELECT 
    COUNT(
        CASE 
            WHEN amount >= 10000 THEN 1
        END
    ) AS high_value_sales
FROM sales;

-- 5. Conditional aggregation
SELECT 
    SUM(CASE WHEN amount >= 10000 THEN amount ELSE 0 END) AS high_value_revenue,
    SUM(CASE WHEN amount < 10000 THEN amount ELSE 0 END) AS other_revenue
FROM sales;
