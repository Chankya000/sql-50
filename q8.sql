--Write a solution to find the IDs 
--of the users who visited without making any transactions and the number of times they made these types of visits.

/* Write your T-SQL query statement below */
select customer_id,count(Visits.visit_id) as count_no_trans from Visits left outer join Transactions
on Visits.visit_id=Transactions.visit_id where Transactions.transaction_id is null group by Visits.customer_id; 