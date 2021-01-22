-- b1
create table Products(
id int not null,
productCode int not null,
productName varchar(50) not null,
productPrice decimal not null,
productAmount decimal not null,
productDescription varchar(50) not null,
productStatus varchar(100) not null
);

insert into products (id,productCode,productName,productPrice,productAmount,productDescription,productStatus)
values(1,001,'Nguyen Hai',5000.00,3,'Something','Babies Hai');

insert into products (id,productCode,productName,productPrice,productAmount,productDescription,productStatus)
values(2,002,'Phuoc',6000.00,4,'Somethingg','Babies Phuoc');

insert into products (id,productCode,productName,productPrice,productAmount,productDescription,productStatus)
values(3,003,'Thang',7000.00,5,'Somethingg','Babies Thang');

insert into products (id,productCode,productName,productPrice,productAmount,productDescription,productStatus)
values(4,004,'Thinh',8000.00,3,'Something','Babies Thinh');

select * from products;

-- b2
alter table products add index idx_productCode(productCode);

CREATE UNIQUE INDEX idxU_productCode
ON products (productCode);

create index idxC_productCode on products(productName,productPrice);

explain select * from products ;

-- b4
create view `v_productInfo` as
select
productCode,
productName,
productPrice,
productStatus
from
products;

select * from v_productinfo;

create or replace view `v_productInfo` as 
select
*
from
products;

drop view `v_productInfo`;

-- b5
DELIMITER //

CREATE PROCEDURE findAllProducts()

BEGIN

  SELECT * FROM products;

END //

DELIMITER ;
	
call findAllProducts();

