create procedure insertarProvincia(p_descripcion varchar(45), p_id_pais int(11))
	insert into provincia (idProvincia, descripcion, id_pais)
	values (null, p_descripcion, p_id_pais);
commit;