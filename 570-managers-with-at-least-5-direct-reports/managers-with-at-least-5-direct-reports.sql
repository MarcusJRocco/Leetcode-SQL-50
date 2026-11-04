# Write your MySQL query statement below
SELECT manager.name
FROM employee
JOIN employee AS manager ON employee.managerId = manager.id
WHERE employee.managerId IS NOT NULL
GROUP BY manager.id, manager.name
HAVING COUNT(employee.managerId) >= 5