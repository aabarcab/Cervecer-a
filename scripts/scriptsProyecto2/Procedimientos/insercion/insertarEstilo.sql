CREATE PROCEDURE `insertarEstilo` (p_descripcion varchar(45), p_id_familia int(11))

	INSERT INTO ESTILO (idCanton, descripcion, id_familia)
	VALUES (null, p_descripcion, p_id_familia);

