create database stores;
use stores;

create table product(pdid varchar(3) primary key,pname varchar(10),price double(5,2),q_instock int);
create table sale(saleid varchar(3)primary key, d_adrs varchar(30));
create table saleitem(saleid varchar(3),pdid varchar(3),qty int,foreign key(saleid)references sale(saleid),foreign key(pdid)references product(pdid),primary key(saleid,pdid));

-- insert items to product table
insert into product values('100','pen',10.3,9);
insert into product values('101','pencil',9.9,7);
insert into product values('103','eraser',5,95);
insert into product values('104','ink',25,12);

-- insert items to sale table
insert into sale values('1','j villa');
insert into sale values('2','m villa');
insert into sale values('3','p villa');
insert into sale values('4','q villa');

-- create triger
create trigger updation 
after insert on saleitem 
for each row update product set q_instock=product.q_instock-new.qty where pdid=new.pdid;

-- insert into saleitem
select * from product;
insert into saleitem values('1','101',4);
select * from product;
insert into saleitem values('3','101',1);
select * from product;