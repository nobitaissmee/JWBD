use bt2;
create table Customers (
customer_number int not null primary key,
customer_name varchar(50) not null,
phone_number varchar(50) not null,
address varchar(50) not null,
sales_repEmployee_number int not null,
foreign key (sales_repEmployee_number) references Employees(employee_number)
);

create table ProductsLine (
product_line varchar(50) not null primary key,
text_description varchar(50) not null
);

create table Products (
product_code varchar(15) not null primary key,
product_name varchar(70) not null,
product_vendor varchar(50) not null,
quantity_in_stock int not null,
buy_price decimal not null,
MSRP decimal not null,
product_line varchar(50) not null,
foreign key (product_line) references ProductsLine(product_line)
);

create table Orders (
order_number int not null primary key,
order_date timestamp not null,
required_date timestamp not null,
shipped_date timestamp not null,
quantity_ordered  int not null,
price_each  decimal not null,
customer_number int not null,
foreign key (customer_number) references Customers(customer_number)
);

create table Payments (
customer_number int not null primary key,
check_number varchar(50) not null,
payment_date timestamp not null,
amount decimal not null,
foreign key (customer_number) references Customers(customer_number)
);

create table Employees (
employee_number int not null primary key, 
employee_name varchar(50) not null,
email varchar(100) not null,
job_title varchar(50) not null,
reportTo int not null,
foreign key (reportTo) references Employees(employee_number),
office_code varchar(10) not null,
foreign key (office_code) references Offices(office_code)
);

alter table Employees
add column office_code varchar(10) not null,
add foreign key (office_code) references Offices(office_code);

create table Offices (
office_code varchar(10) not null primary key,
address varchar(50) not null,
phone_number varchar(50) not null,
country varchar (50) not null,
postal_code varchar(15) not null
);

create table  OrderDetails(
order_number int not null primary key,
product_code varchar(15) not null,
foreign key (product_code) references Products(product_code),
foreign key (order_number) references Orders(order_number)
);
