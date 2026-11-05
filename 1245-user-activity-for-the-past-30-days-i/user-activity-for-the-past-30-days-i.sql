# Write your MySQL query statement below
SELECT activity_date as day, COUNT(distinct user_id) as active_users
FROM activity
WHERE activity_date BETWEEN SUBDATE('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27'
GROUP BY day