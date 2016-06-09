CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarColor`(p_descripcion varchar(45))
BEGIN
	INSERT INTO COLOR (idColor, descripcion)
	VALUES (null, p_descripcion);
END