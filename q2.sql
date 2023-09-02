--Find the names of the customer that are not referred by the customer with id = 2.
/* Write your T-SQL query statement below */
select name from customer where  referee_id is null or referee_id!=2 ;