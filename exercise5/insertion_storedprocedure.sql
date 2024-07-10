CREATE DEFINER=`root`@`localhost` PROCEDURE `insertproduct`(in barcode varchar(4),in product_name varchar(30),in price double(5,2),in q_stock int)
BEGIN
declare r varchar(20);
if price>0 and q_stock>0
then
insert into product values(barcode,product_name,price,q_stock);
else
set r='item not inserted';
select r;
end if;
END