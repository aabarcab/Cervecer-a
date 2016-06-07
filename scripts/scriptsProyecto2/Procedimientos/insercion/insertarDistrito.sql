create procedure insertarDistrito(p_descripcion varchar(45), p_id_canton int(11))
	insert into distrito(idDistrito, descripcion, id_canton)
	values (null, p_descripcion, p_id_canton);
commit;