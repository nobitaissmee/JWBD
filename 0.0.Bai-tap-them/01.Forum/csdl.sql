create database `bt_csdl-bt1`;
use `bt_csdl-bt1`;

create table `thanhvien`(
ma_tv int not null primary key,
ten_tv varchar(100) not null,
mat_ma varchar(50) not null
);

create table `baiviet`(
ma_bv int not null primary key,
tieu_de varchar(50) not null,
`status` varchar(50) not null,
ma_cd int unique ,
foreign key (ma_cd) references `chude`(ma_cd),
ma_tv int unique not null,
foreign key (ma_tv) references `thanhvien`(ma_tv),
ma_tl int,
foreign key (ma_tl) references `baiviet`(ma_bv)
);

create table `chude`(
ma_cd int not null primary key,
ten_cd varchar(50) not null,
thao_luan varchar (500) not null
);