DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerColores`()
    NO SQL
    COMMENT 'obtiene los colores y su id'
select idColor, descripcion from color$$
DELIMITER ;