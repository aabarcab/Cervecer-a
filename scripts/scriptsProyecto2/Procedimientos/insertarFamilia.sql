create procedure insertarFamilia(p_descripcion varchar(45))
insert into familia(idFamilia, descripcion)
values(null,p_descripcion);
commit;
