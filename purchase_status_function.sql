CREATE DEFINER=`root`@`localhost` FUNCTION `purchase_status`(cnumber integer) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN

declare total integer;
declare purchase_status varchar(100);

select sum(amount) into total from payments where customernumber=cnumber;





if total<25000 then 
set purchase_status='silver';
elseif total between 25000 and 50000 then
set purchase_status='gold';
else
set purchase_status='platinum';

end if;

RETURN purchase_status;

END