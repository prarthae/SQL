CREATE DEFINER=`root`@`localhost` PROCEDURE `factorial`(in num int)
BEGIN
declare f int;
declare n1 int;
set n1=num;
set f=1;
while num>0
do
set f=f*num;
set num=num-1;
end while;
select n1 as Number,f as Factorial;
END