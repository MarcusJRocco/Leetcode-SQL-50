# Write your MySQL query statement below
SELECT e.name, b.bonus
FROM Employee as e
LEFT JOIN Bonus as b ON e.empid = b.empid
WHERE b.Bonus < 1000 OR b.Bonus IS NULL