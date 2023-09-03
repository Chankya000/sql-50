--Find all dates' Id with higher temperatures compared to its previous dates (yesterday).

--Return the result table in any order.

/* Write your T-SQL query statement below */
select wc.id as Id from weather wc , weather wp  where wc.temperature > wp.temperature and wc.recordDate = DATEADD(day,1,wp.recordDate);

--DATEADD(year, 1, '2017/08/25')