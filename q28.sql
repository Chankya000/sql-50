/* Write your T-SQL query statement below 

A single number is a number that appeared only once in the MyNumbers table.

Find the largest single number. If there is no single number, report null.

The result format is in the following example.*/
select max(num) as num from 
(select num from MyNumbers group by num having count(num)=1) ta

/* Write your T-SQL query statement below */
select coalesce ((
  select top 1 num from mynumbers
  group by num
  having count(*) = 1
  order by num desc
), null) as num;