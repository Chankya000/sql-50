--Write a solution to report the product_name, year, and price for each sale_id in the Sales table.
/* Write your T-SQL query statement below */
select product_name,year,price from Sales inner join Product on Sales.product_id=Product.product_id;