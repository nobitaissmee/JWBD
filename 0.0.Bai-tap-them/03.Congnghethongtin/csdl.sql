create database `bt_csdl-bt3`;

use `bt_csdl-bt3`;

create table `phongmay`(
sophong int not null primary key,
quanly varchar(50) not null
);

create table `maytinh`(
somay int not null unique primary key,
status_cpu varchar(50) not null,
status_ram varchar(50) not null,
status_hdd varchar(50) not null,
sophong int not null,
foreign key (sophong) references `phongmay`(sophong)
);

create table `monhoc`(
ma_mh int not null primary key,
ten_mh varchar(50) not null,
dvhoctrinh int not null,
somay int not null,
foreign key (somay) references `maytinh`(somay)
);