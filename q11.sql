--Write an SQL query to report the name and bonus amount of each employee with a bonus less than 1000.

/* Write your T-SQL query statement below */
select name,bonus  from Employee e1 left join Bonus b1 on e1.empId=b1.empId where b1.bonus is null or b1.bonus <1000 ;  

