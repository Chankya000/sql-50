--Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null
/* Write your T-SQL query statement below */
select unique_id,name from Employees left  join  EmployeeUNI on  EmployeeUNI.id=Employees.id;


--to find the length of string len()