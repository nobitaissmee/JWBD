create database `bt_csdl-bt4`;

use `bt_csdl-bt4`;

create table `detai`(
maso_dt int not null primary key,
name_dt varchar(50) not null,
maso_lv int not null,
foreign key (maso_lv) references `linhvuc`(maso_lv),
maso_gv int not null,
foreign key (maso_gv) references `giaovien`(maso_gv)
);

create table `giaovien`(
maso_gv int not null primary key,
name_gv varchar(50) not null,
hocham_gv varchar(50) not null,
hocvi_gv varchar(50) not null
);

create table `hocsinh` (
maso_hs int not null primary key,
name_hs varchar(50) not null,
maso_lh int not null,
foreign key (maso_lh) references `lophoc`(maso_lh)
);

create table `lophoc`(
maso_lh int not null primary key,
name_lh varchar(50) not null,
maso_gv int not null,
foreign key (maso_gv) references `giaovien`(maso_gv)
);

create table `linhvuc`(
maso_lv int not null primary key,
name_lv varchar(50) not null,
status_lv varchar(50) not null
);
