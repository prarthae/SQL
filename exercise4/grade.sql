CREATE DEFINER=`root`@`localhost` PROCEDURE `grade`(in mark int)
BEGIN
declare g varchar(30);
if mark>90
then
set g='A';
elseif mark>80
then
set g='B';
elseif mark>70
then
set g='C';
elseif mark>60
then
set g='D';
else
set g='Failed';
end if;
select mark as Mark,g as Grade;
END