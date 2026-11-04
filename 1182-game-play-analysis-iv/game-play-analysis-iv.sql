# Write your MySQL query statement below
WITH fl AS (
    SELECT player_id, min(event_date) AS first_login_date
    FROM activity
    GROUP BY player_id
)

SELECT ROUND(
    COUNT(DISTINCT CASE WHEN DATEDIFF(a1.event_date, fl.first_login_date) = 1 THEN a1.player_id END) 
    / 
    COUNT(DISTINCT a1.player_id), 2) AS fraction
FROM Activity a1
JOIN fl ON a1.player_id = fl.player_id