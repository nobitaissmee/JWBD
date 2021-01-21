use bt2;
select customers.customer_number, customer_name, phone_number, payment_date, amount from customers
inner join payments
on customers.customer_number = payments.customer_number;

select customers.customer_number, customers.customer_name, orders.order_number
from customers
left join orders
on customers.customer_number = orders.customer_number ;