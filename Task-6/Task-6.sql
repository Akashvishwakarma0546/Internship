use internship;
-----------------------------------------------All condinton apply this query
SELECT
o.OrderID,o.OrderDate,
MONTH(o.orderdate) AS Month,
YEAR(o.orderdate) AS Year,
ROUND(SUM(od.quantity * p.price), 2) AS revenue
FROM orders o
JOIN ordersdetails od ON o.OrderID = od.OrderID
JOIN products p ON od.ProductID = p.ProductID
where o.OrderDate between '1996-07-01'and '1996-07-15'
GROUP BY 1,2,3,4
order by 5 desc   limit 3

---------------------------------------------- distinct order count
select 
count(distinct(orderid)) as oredr_count 
from orders


