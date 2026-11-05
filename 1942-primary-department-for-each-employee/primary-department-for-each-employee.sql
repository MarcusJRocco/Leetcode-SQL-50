# Write your MySQL query statement below
WITH primary_dept AS (
    SELECT employee_id, department_id, primary_flag, 
        COUNT(*) OVER (PARTITION BY employee_id) AS dept_count
    FROM Employee
)

SELECT employee_id, department_id
FROM primary_dept
WHERE primary_flag = 'Y' OR dept_count = 1;