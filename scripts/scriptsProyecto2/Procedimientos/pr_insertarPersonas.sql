create  procedure insertarPersonas(pNombre varchar(45), pApellidoUno varchar(45),
					pApellidoDos varchar(45), pCedula varchar(45), pCorreo varchar(45),
                    pFoto mediumblob, pDireccion varchar(45), pId_distrito int(11),
                    pId_usuario int(11))
	insert into persona(idpersona, nombre,apellidoUno,apellidoDos,cedula,correo,foto,
							direccion,id_distrito,id_usuario)
	values(null, pNombre, pApellidoUno,pApellidoDos, pCedula, pCorreo, pFoto,pDireccion,
			pId_distrito, pId_usuario);
            commit;

            
