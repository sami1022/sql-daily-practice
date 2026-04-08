-- 1. Daily Active Users (DAU)
SELECT activity_date,
COUNT(DISTINCT user_id) AS dau
FROM user_activity
GROUP BY activity_date
ORDER BY activity_date;

-- 2. Monthly Active Users (MAU)
SELECT DATE_TRUNC('month', activity_date) AS month,
COUNT(DISTINCT user_id) AS mau
FROM user_activity
GROUP BY month
ORDER BY month;

-- 3. Churned users (users active before but not later)
WITH last_activity AS (
    SELECT user_id, MAX(activity_date) AS last_date
    FROM user_activity
    GROUP BY user_id
)
SELECT COUNT(*) AS churned_users
FROM last_activity
WHERE last_date < CURRENT_DATE - INTERVAL '30 days';

-- 4. Retention rate (returned users)
WITH first_activity AS (
    SELECT user_id, MIN(activity_date) AS first_date
    FROM user_activity
    GROUP BY user_id
),
returning_users AS (
    SELECT DISTINCT ua.user_id
    FROM user_activity ua
    JOIN first_activity fa
    ON ua.user_id = fa.user_id
    WHERE ua.activity_date > fa.first_date
)
SELECT 
COUNT(r.user_id) * 100.0 / COUNT(f.user_id) AS retention_rate
FROM first_activity f
LEFT JOIN returning_users r
ON f.user_id = r.user_id;

-- 5. Most active users
SELECT user_id, COUNT(*) AS activity_count
FROM user_activity
GROUP BY user_id
ORDER BY activity_count DESC
LIMIT 5;
