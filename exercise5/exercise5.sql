create database store;
use store;
 create table product(pdid varchar(4) primary key,pname varchar(30),price double(5,2),Quantity int);
 
 call insertproduct('1001','pen',10.5,8);
  call insertproduct('1002','pen',0,8);
 