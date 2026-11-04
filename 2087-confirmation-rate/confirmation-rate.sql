# Write your MySQL query statement below
SELECT s.user_id,
    IFNULL
    (
        ROUND
        (
            (SUM(CASE WHEN action = 'confirmed' THEN 1 ELSE 0 END)/ COUNT(Action)), 2), 0) AS confirmation_rate
FROM signups s
LEFT JOIN confirmations c ON s.user_id = c.user_id
GROUP by s.user_id