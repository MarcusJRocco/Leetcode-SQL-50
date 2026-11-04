# Write your MySQL query statement below
SELECT p.project_id, IFNULL(ROUND(SUM(e.experience_years) / COUNT(distinct e.employee_id), 2), 0) AS average_years
FROM project p
JOIN employee e ON p.employee_id = e.employee_id
GROUP BY project_id