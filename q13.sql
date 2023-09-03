--Write a solution to find managers with at least five direct reports.

/* Write your T-SQL query statement below */
select E1.name from Employee E1 left join Employee E2 on E1.id=E2.managerId  
group by E1.name having count(*)>=5;