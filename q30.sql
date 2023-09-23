
SELECT e1.employee_id, e1.name, COUNT(e2.reports_to) AS reports_count, ROUND(AVG(e2.age*1.00),0) AS average_age
FROM Employees e1 JOIN Employees e2
ON e1.employee_id = e2.reports_to
GROUP BY e1.employee_id, e1.name
HAVING COUNT(e2.reports_to) >= 1
ORDER BY employee_id
