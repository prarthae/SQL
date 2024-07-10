CREATE DEFINER=`root`@`localhost` PROCEDURE `sign_of_number`(in num int)
BEGIN
declare r varchar(10);
if num>0
then
set r='POSITIVE';
elseif num=0
then
set r='ZERO';
else
set r='NEGETIVE';
end if;
select num as Number,r as Result; 
END