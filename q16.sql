--Write an SQL query to find the average selling price for each product. average_price should be rounded to 2 decimal places.

--Return the result table in any order.

select unitssold.product_id, 
round(cast(sum(units*price) as float) / sum(units), 2) as average_price from unitssold
left join prices on unitssold.product_id = prices.product_id and purchase_date >= start_date and purchase_date <= end_date
group by unitssold.product_id