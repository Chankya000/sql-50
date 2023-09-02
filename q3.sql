--Write a solution to find the name, population, and area of the big countries.
/* Write your T-SQL query statement below */
select name,population,area from world where area >=3000000 or population>= 25000000;