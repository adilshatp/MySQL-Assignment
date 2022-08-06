CREATE DEFINER=`root`@`localhost` PROCEDURE `cancellation_proc`()
BEGIN

INSERT INTO cancellations (customerno, orderno, comments)
SELECT customernumber,ordernumber,comments
FROM orders
WHERE status='cancelled';


select * from cancellations;

END