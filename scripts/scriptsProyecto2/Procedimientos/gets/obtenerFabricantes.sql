DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerFabricantes`()
    NO SQL
    COMMENT 'obtiene la lista de fabricantes'
select idFabricante, descripcion from fabricante$$
DELIMITER ;