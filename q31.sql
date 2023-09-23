/* Write your T-SQL query statement below */
WITH CTE AS (
    SELECT
        *,
        COUNT(employee_id) OVER(PARTITION BY employee_id) CountDep
    FROM
        Employee
)
SELECT DISTINCT
    employee_id,
    department_id
FROM
    CTE 
WHERE
    CountDep = 1
UNION ALL
SELECT DISTINCT
    employee_id,
    department_id
FROM
    CTE 
WHERE
    CountDep > 1
AND
    primary_flag= 'Y'