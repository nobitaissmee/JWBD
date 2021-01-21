create table books (
book_number int not null primary key,
book_name varchar(50) not null,
book_publisher varchar(50) not null,
book_author varchar(50) not null,
year_publisher int not null,
publisher_number int not null,
book_price decimal not null,
cate_number int not null,
foreign key (cate_number) references category(cate_number)
);

create table students(
student_number varchar(15) not null primary key,
`name` varchar(50) not null,
`day_of_birth` timestamp not null,
address varchar(500) not null,
email varchar(50) not null,
phone_number varchar(50) not null
);

create table category(
cate_number int primary key,
category varchar(50) not null,
name_book varchar(50) not null
);

create table borrow_order(
borrow_number int not null primary key,
student_number varchar(15) not null,
name_book_borrow varchar(50) not null,
date_borrow timestamp not null,
date_return_expected timestamp not null,
date_return_actual timestamp not null,
foreign key (student_number) references students(student_number)
);

create table borrow_list(
borrow_number int not null,
book_number int not null,
book_name varchar(50) not null,
book_category varchar(50) not null,
foreign key (borrow_number) references borrow_order(borrow_number),
foreign key (book_number) references books(book_number)
)