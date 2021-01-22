create database `bt_csdl-bt2`;

use `bt_csdl-bt2`;

create table mathang(
ma_mh int not null primary key,
ten_mh varchar(50) not null,
dvt varchar(50) not null,
soluong int not null,
gia decimal not null
);

create table phieunhap(
sp int not null primary key,
ngaynhap timestamp not null,
ten_ncc varchar(50) not null,
ma_mh int not null,
foreign key (ma_mh) references mathang(ma_mh)
);

create table hdxuat(
ma_hd int not null primary key,
ngayban timestamp not null,
ten_mn varchar(50) not null,
ma_mh int not null,
foreign key (ma_mh) references mathang(ma_mh)
);