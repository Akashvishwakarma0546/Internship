create database Ecommerce;
use Ecommerce;
------------------------------------------------------------where and order by 


select order_status,order_status,order_estimated_delivery_date from orders
WHERE order_estimated_delivery_date between '01-01-2017' and '30-12-2017'
order by 1 asc;

-------------------------------------------------------- Where , group by and order by 


select order_status,count(*),order_estimated_delivery_date from orders
WHERE order_estimated_delivery_date between '01-01-2017' and '30-12-2017'
group by 1,3
order by 1 asc;

-------------------------------------------------------Right JOIN 


select o.order_id,o.customer_id,orv.review_score from orders o
right join order_reviews orv
on orv.order_id=o.order_id
order by 1 desc	

-------------------------------------------------------LEFT join 


select o.order_id,o.customer_id,orv.review_score from orders o
left join order_reviews orv
on orv.order_id=o.order_id
where review_score is not null
order by 1 desc
------------------------------------------------------ Using aggregate functions Sum and Avg 

select payment_type,sum(payment_value),avg(payment_value)  from order_payments
group by 1

--------------------------------------------------------------Subqueries

select payment_type  from order_payments
WHERE payment_value=(select max(payment_value) from order_payments)
















