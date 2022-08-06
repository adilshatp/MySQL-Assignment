CREATE DEFINER=`root`@`localhost` TRIGGER `movie_rental_trigger` AFTER DELETE ON `movies` FOR EACH ROW BEGIN


delete from rentals where rentals.movieid=old.id;


END