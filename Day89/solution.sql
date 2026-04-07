-- 1. Users at each funnel stage
SELECT event_name, COUNT(DISTINCT user_id) AS users
FROM user_events
GROUP BY event_name;

-- 2. Conversion rate (signup → purchase)
WITH signup_users AS (
    SELECT DISTINCT user_id
    FROM user_events
    WHERE event_name = 'signup'
),
purchase_users AS (
    SELECT DISTINCT user_id
    FROM user_events
    WHERE event_name = 'purchase'
)
SELECT 
    COUNT(p.user_id) * 100.0 / COUNT(s.user_id) AS conversion_rate
FROM signup_users s
LEFT JOIN purchase_users p
ON s.user_id = p.user_id;

-- 3. Daily Active Users (DAU)
SELECT event_date, COUNT(DISTINCT user_id) AS dau
FROM user_events
GROUP BY event_date
ORDER BY event_date;

-- 4. Users who returned after signup
SELECT DISTINCT u1.user_id
FROM user_events u1
JOIN user_events u2
ON u1.user_id = u2.user_id
WHERE u1.event_name = 'signup'
AND u2.event_name = 'login'
AND u2.event_date > u1.event_date;

-- 5. Retention rate (returned users / total users)
WITH total_users AS (
    SELECT DISTINCT user_id
    FROM user_events
    WHERE event_name = 'signup'
),
returning_users AS (
    SELECT DISTINCT u1.user_id
    FROM user_events u1
    JOIN user_events u2
    ON u1.user_id = u2.user_id
    WHERE u1.event_name = 'signup'
    AND u2.event_name = 'login'
    AND u2.event_date > u1.event_date
)
SELECT 
    COUNT(r.user_id) * 100.0 / COUNT(t.user_id) AS retention_rate
FROM total_users t
LEFT JOIN returning_users r
ON t.user_id = r.user_id;
