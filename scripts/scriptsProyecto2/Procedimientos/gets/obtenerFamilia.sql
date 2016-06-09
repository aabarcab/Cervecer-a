DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerFamilia`()
    NO SQL
select idFamilia, descripcion from familia order by descripcion$$
DELIMITER ;