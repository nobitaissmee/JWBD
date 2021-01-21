select `status` from orders 
group by `status`;

select `status`, COUNT(*) as 'So luong status'
from orders
group by `status`;

select `status`, sum(quantity_ordered * price_each) as amount
from orders 
inner join orderdetails on orders.order_number = orderdetails.order_number
group by `status`;

select order_number, sum(quantity_ordered * price_each) as total
from orderdetails
group by order_number;

select year(order_date) as `year`, sum(quantity_ordered * price_each) as total
from orders 
inner join orderdetails on orders.order_number = orderdetails.order_number
where `status` = 'shipped'
group by `year`
having `year` > 2003;
