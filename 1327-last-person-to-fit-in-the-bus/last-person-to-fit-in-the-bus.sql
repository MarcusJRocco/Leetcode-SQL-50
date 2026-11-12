# Write your MySQL query statement below
WITH mass as(
    SELECT *, SUM(weight) OVER(ORDER BY turn) as total_weight
    FROM queue
)

SELECT person_name
FROM mass
WHERE total_weight <= 1000
ORDER BY turn DESC
LIMIT 1;