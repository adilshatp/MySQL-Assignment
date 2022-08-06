CREATE DEFINER=`root`@`localhost` PROCEDURE `order_status`(yr integer,mnth integer)
BEGIN

select ordernumber,orderdate,status from orders where year(orderdate)=yr and month(orderdate)=mnth;



END