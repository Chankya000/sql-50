/* Write your T-SQL query statement below */

WITH CTE AS (
    
    SELECT
        person_name,
        SUM(weight) OVER(ORDER BY Turn ASC) TotalW
    FROM
        Queue
)
,CTE2 AS (

        SELECT
            person_name,
            TotalW
        FROM
            CTE
        WHERE
            TotalW <= 1000
)
SELECT
    TOP 1
    person_name
FROM
    CTE2
ORDER BY
    TotalW DESC