CREATE PROCEDURE `insertarFabricante` (p_descripcion varchar(45))

	INSERT INTO FABRICANTE (idFabricante, descripcion)
	VALUES (null, p_descripcion);

