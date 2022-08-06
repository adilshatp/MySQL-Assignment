CREATE DEFINER=`root`@`localhost` TRIGGER `movie_rental_update_trigger` AFTER UPDATE ON `movies` FOR EACH ROW BEGIN

update  rentals set rentals.movieid=new.id where rentals.movieid=old.id;


END