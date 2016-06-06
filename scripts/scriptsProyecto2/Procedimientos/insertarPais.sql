create procedure insertarPais(p_descripcion varchar(45))
	insert into pais (idPais, descripcion)
	values (null, p_descripcion);
commit;