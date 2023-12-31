/* Write your T-SQL query statement below 
Write a solution to find the percentage of the users registered in each contest rounded to two decimals.

Return the result table ordered by percentage in descending order. In case of a tie, order it by contest_id in ascending order.
*/
SELECT contest_id,ROUND((COUNT(r.user_id)*1.0/(SELECT COUNT(user_id) FROM Users)),4) *100 
AS percentage
FROM Register r
GROUP BY contest_id
ORDER BY 2 DESC, 1 ASC