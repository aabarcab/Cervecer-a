create procedure insertarCanton(p_descripcion varchar(45), p_id_provincia int(11))
	insert into canton (idCanton, descripcion, id_provincia)
	values (null, p_descripcion, p_id_provincia);
commit;
call insertarCanton('Sarapiqui', 31);