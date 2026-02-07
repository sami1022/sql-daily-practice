-- 1. Round prices to two decimal places
SELECT 
    product_name,
    ROUND(price, 2) AS rounded_price
FROM sales;

-- 2. Round ratings to nearest whole number
SELECT 
    product_name,
    ROUND(rating) AS rounded_rating
FROM sales;

-- 3. Round prices upward using CEIL
SELECT 
    product_name,
    CEIL(price) AS ceil_price
FROM sales;

-- 4. Round prices downward using FLOOR
SELECT 
    product_name,
    FLOOR(price) AS floor_price
FROM sales;

-- 5. Apply rounding after discount
SELECT 
    product_name,
    ROUND(price - discount, 2) AS final_price
FROM sales;
