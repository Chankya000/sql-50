/* Write your T-SQL query statement below
We define query quality as:

The average of the ratio between query rating and its position.

We also define poor query percentage as:

The percentage of all queries with rating less than 3.

Write a solution to find each query_name, the quality and poor_query_percentage.
 */
select query_name, round(avg((rating*1.00)/position),2) quality,
 round(avg(case when rating<3 then 1.00 else 0.00 end)*100,2) 
 poor_query_percentage from Queries group by query_name;