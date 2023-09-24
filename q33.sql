/* Write your T-SQL query statement below */
;with cte as (select
	*,
	LEAD(num) OVER(ORDER BY (SELECT NULL)) nextvalues,
	LEAD(num,2) OVER(ORDER BY (SELECT NULL)) nextvalues2
from	
	Logs
)
,cte2 as (select
	distinct iif(num = nextvalues and nextvalues = nextvalues2 and num = nextvalues2,num,null) result 
from
	cte
)
select
	result as ConsecutiveNums
from	
	cte2 
where
	result is not null