/* Write your T-SQL query statement below
Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".

Return the result table ordered by rating in descending order.
 */
select * from Cinema where description != 'boring' and id%2=1 order by rating desc;