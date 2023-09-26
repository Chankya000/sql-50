
/* Write your T-SQL query statement below */
select
'Low Salary' as category
, sum(iif(income < 20000, 1, 0)) as accounts_count
from Accounts
union all
select
'Average Salary' as category
, sum(iif(income >= 20000 and income <= 50000, 1, 0)) as accounts_count
from Accounts
union all
select
'High Salary' as category
, sum(iif(income > 50000, 1, 0)) as accounts_count
from Accounts
