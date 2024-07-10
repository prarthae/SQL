CREATE DEFINER=`root`@`localhost` PROCEDURE `wk_day`(in d date)
BEGIN
declare wday varchar(20);
set wday=weekday(d);
select d as date, wday as Weekday;
END