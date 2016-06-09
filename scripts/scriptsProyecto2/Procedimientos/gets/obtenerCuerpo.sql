DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerCuerpo`()
select idCuerpo, descripcion from cuerpo$$
DELIMITER ;