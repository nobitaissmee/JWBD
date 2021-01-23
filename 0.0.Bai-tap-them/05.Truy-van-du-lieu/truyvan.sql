-- cau 1
Select * from `nhacungcap`;

-- cau 2
Select 
mahang,
tenhang,
soluong 
from 
`mathang`;

-- cau 3

Select 
ho || ' ' || ten ,
diachi,
year(ngaylamviec) as nambatdau
from 
`nhanvien`;

-- cau 4

Select
diachi,
dienthoai
from 
`nhacungcap`
where
tengiaodich ='VINAMILK';

-- cau 5

Select 
mahang,
tenhang
from
`mathang`
where
giahang > 100000 
and
soluong > 50 ;

-- cau 6

Select
m.mathang,
n.tencongty as nhacungcap
from
`mathang` m
join `nhacungcap` n on n.macongty=m.macongty;

-- cau 7

Select
m.mahang,
m.tenhang
from 
`mathang` m
join `nhacungcap` n on n.macongty=m.macongty
where
n.tencongty='Viet Tien';

-- cau 8

Select 
l.tenloaihang,
n.tencongty
from
`loaihang` l
join `mathang` m on m.maloaihang=l.maloaihang
join `nhacungcap` n on n.macongty=m.macongty
where l.tenloaihang ='thuc pham';

-- cau 9

Select
tengiaodich
from
`khachhang` k
join `dondathang` d on d.makhachhang=k.makhachhang
join `chitietdathang` c on c.sohoadon=d.sohoadon
join `mathang` m on m.mahang=c.mahang
where m.tenmathang='Sua hop XYZ';

-- cau 10 

Select
sohoadon,
k.tenkhachhang as ten_khach_hang ,
n.tennhanvien as ten_nhan_vien,
ngaygiaohang,
noigiaohang
from
`dondathang` d
join `khachhang` k on k.makhachhang=d.makhachhang
join `nhanvien` n on n.manhanvien =d.manhanvien
where d.sohoadon=1;

-- cau 11

Select 
ho || ' ' || ten as ten_nhan_vien,
(luongcoban+phucap) as luong
from
`nhanvien`;

-- cau 12

Select
m.tenloaihang,
(c.soluong*c.giaban-c.soluong*c.giaban*c.mucgiamgia/100) as tien_tra
from 
`loaihang` l
join `mathang` m on m.mahang=l.mahang
join `chitietdathang` c on c.mahang=m.mahang
where c.sohoadon=1;

-- cau 13 

Select
tenkhachhang as doi_tac
from 
`khachhang` k
join `dondathang` d on d.makhachhang=k.makhachhang
join `chitietdathang` c on c.sohoadon=d.sohoadon
join `mathang` m on m.mahang=c.mahang
join `nhacungcap` n on n.macongty=m.macongty
where k.tengiaodich=n.tengiaodich;

-- cau 14

Select
tennhanvien
from
`nhanvien` n1
join `nhanvien` n2 on n2.manhanvien <> n1.manhanvien and n2.ngaysinh=n1.ngaysinh;

-- cau 15

Select
d.sohoadon,
n.tencongty
from
`dondathang` d
join `chitietdathang` c on c.sohoadon=d.sohoadon
join `mathang` m on m.mahang=c.mahang
join `nhacungcap` n on n.macongty=m.macongty
where d.noigiaohang=n.tencongty;

-- cau 16

Select
k.tencongty,
k.tengiaodich,
k.diachi,
k.dienthoai,
n.tencongty as nhacungcap
from
`khachhang` k,
`nhacungcap` n;

 -- cau 17

 

