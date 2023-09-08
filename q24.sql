/* Write your T-SQL query statement below 
Write a solution to find the daily active user count for a period of 30 days ending 2019-07-27 inclusively. A user was active on someday if they made at least one activity on that day.

Return the result table in any order.

The result format is in the following example. */
SELECT activity_date as day , COUNT(DISTINCT user_id) AS active_users 
FROM Activity
WHERE activity_date > DATEADD(DAY, -30, '2019-07-27') 
AND activity_date <= '2019-07-27'
GROUP BY activity_date