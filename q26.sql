/* Write your T-SQL query statement below 
Write a solution to find all the classes that have at least five students.

Return the result table in any order.

The result format is in the following example.*/

select class from Courses group by class having count(*) >=5;