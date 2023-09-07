/*  If the customer's preferred delivery date is the same as the order date, then the order is called immediate; otherwise, it is called scheduled.

The first order of a customer is the order with the earliest order date that the customer made. It is guaranteed that a customer has precisely one first order.

Write a solution to find the percentage of immediate orders in the first orders of all customers, rounded to 2 decimal places.*/

with 
first_order as (select customer_id, min(order_date) as first_order_date from Delivery a group by customer_id)
select 
round(cast(count(*) as float)*100/(select  count(distinct customer_id) from Delivery),2) as immediate_percentage
from first_order a inner join Delivery b 
on b.customer_id=a.customer_id and b.order_date=a.first_order_date 
where a.first_order_date=b.customer_pref_delivery_date