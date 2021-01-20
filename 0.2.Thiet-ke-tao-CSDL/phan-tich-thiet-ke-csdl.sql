create table Customers (
customer_number int not null primary key,
customer_name varchar(50) not null,
phone_number varchar(50) not null,
address varchar(50) not null,
);

create table ProductsLine (
product_line varchar(50) not null,
text_description varchar(50) not null
);

create table Products (
product_code varchar(15) not null,
product_name varchar(70) not null,
product_vendor varchar(50) not null,
quantity_in_stock int not null,
buy_price decimal not null,
MSRP decimal not null
);

create table Orders (
order_number int not null,
order_date timestamp not null,
required_date timestamp not null,
shipped_date timestamp not null,
quantity_ordered  int not null,
price_each  decimal not null
);

create table Payments (
customer_number int not null,
check_number varchar(50) not null,
payment_date timestamp not null,
amount decimal not null
);

create table Employees (
employee_number int not null, 
employee_name varchar(50) not null,
email varchar(100) not null,
job_title varchar(50) not null
);

create table Offices (
office_code varchar(10) not null,
address varchar(50) not null,
phone_number varchar(50) not null,
country varchar (50) not null,
postal_code varchar(15) not null
)
