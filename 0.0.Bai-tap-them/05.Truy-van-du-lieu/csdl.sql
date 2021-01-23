create database `bt-tvdl-bt1`;

use `bt-tvdl-bt1`;

create table `khachhang`(
makhachhang int not null primary key,
tencongty varchar(50) not null,
tengiaodich varchar(50) not null,
diachi varchar(500) not null,
email varchar(100) not null,
dienthoai varchar(20) not null,
fax varchar(50) not null
);

alter table `khachhang` rename column `tencongty` to `tenkhachhang`;

create table `dondathang`(
sohoadon int not null primary key,
makhachhang int not null,
manhanvien int not null,
ngaydathang timestamp not null,
ngaygiaohang timestamp not null,
ngaychuyenhang timestamp not null,
noigiaohang varchar(100) not null,
foreign key (makhachhang) references `khachhang`(makhachhang),
foreign key (manhanvien) references `nhanvien`(manhanvien)
);

create table `nhanvien`(
manhanvien int not null primary key,
ho varchar(50) not null,
ten varchar(50) not null,
ngaysinh timestamp not null,
ngaylamviec timestamp not null,
diachi varchar(100) not null,
dienthoai varchar(20) not null,
luongcoban decimal not null,
phucap decimal not null
);

create table `nhacungcap`(
macongty int not null primary key,
tencongty varchar(50) not null,
tengiaodich varchar(50) not null,
diachi varchar(50) not null,
dienthoai varchar(20) not null,
fax varchar(50) not null,
email varchar(100) not null
);

create table `mathang`(
mahang int not null primary key,
tenhang varchar(50) not null,
macongty int not null,
maloaihang int not null,
soluong int not null,
doivitinh varchar(50) not null,
giahang decimal not null,
foreign key (macongty) references `nhacungcap`(macongty),
foreign key (maloaihang) references `loaihang`(maloaihang)
);

create table `chitietdathang`(
sohoadon int not null primary key,
mahang int not null ,
giaban decimal not null,
soluong int not null,
mucgiamgia decimal not null,
foreign key (sohoadon) references `dondathang`(sohoadon),
foreign key (mahang) references `mathang`(mahang)
);

create table `loaihang`(
maloaihang int not null primary key,
tenloaihang varchar(100) not null
);