use bt1;

create table customers(
customer_number varchar(50) not null PRIMARY KEY,
fullname varchar(50) not null,
address varchar(50) not null,
email varchar(50) not null,
phone varchar(50) not null
);

create table accounts (
account_number varchar(50) unique not null PRIMARY KEY,
account_type  varchar(50) not null,
`date` timestamp not null,
balance decimal not null,
custom_number varchar(50) not null
);

alter table accounts
add foreign key (custom_number) references customers(customer_number);

create table transactions (
tran_number varchar(50) unique not null PRIMARY KEY,
account_number varchar(50) not null,
`date` timestamp not null,
amounts decimal not null,
descriptions varchar(50) not null,
foreign key (account_number) references accounts(custom_number)
);

