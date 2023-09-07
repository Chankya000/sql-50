/* Write your T-SQL query statement below */

/* Write your T-SQL query statement below */

/* after the day they "first" logged in 
Write a solution to report the fraction of players that 
logged in again on the day after the day they first logged in,
 rounded to 2 decimal places. In other words, you need to count the
 number of players that logged in for at least two consecutive days 
 starting from their first login date, then divide that number by the total number of players.

The result format is in the following example*/

With firstday as (
select player_id, min(event_date) as firstdate
from Activity
group by player_id
)
, nextdayplayers as (
  select count(a1.player_id) as con_players
  from Activity a1 inner join firstday a2 
  on a1.player_id = a2.player_id and a1.event_date = DateAdd(day, 1, a2.firstdate)
)
, totalplayers as (
  select count(distinct player_id) as totalplayers
  from firstday
)

select round(con_players/cast(totalplayers as float),2) as fraction
from nextdayplayers, totalplayers