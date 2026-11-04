# Write your MySQL query statement below
SELECT manager.name
FROM employee
JOIN employee AS manager ON employee.managerId = manager.id
GROUP BY manager.id
HAVING COUNT(employee.managerId) >= 5