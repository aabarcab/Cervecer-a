DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerPersonas_Nombre_Like`(pNombre varchar(45))
SELECT * from persona where persona.nombre like pNombre$$
DELIMITER ;