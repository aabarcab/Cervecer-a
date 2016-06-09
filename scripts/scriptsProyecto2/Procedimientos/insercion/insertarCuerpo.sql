CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarCuerpo`(p_descripcion varchar(45))
BEGIN
	INSERT INTO CUERPO (idCuerpo, descripcion)
	VALUES (null, p_descripcion);
END