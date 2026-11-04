# Write your MySQL query statement below
SELECT *
FROM cinema
WHERE ID % 2 = 1 AND description NOT IN ('Boring')
ORDER BY rating desc