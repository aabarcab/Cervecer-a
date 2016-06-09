CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarTipoFermentacion`(P_DESCRIPCION VARCHAR(45))

	insert into TIPOFERMENTACION (idTipoFermentacion, DESCRIPCION)
    values(null, P_NEW_DESCRIPCION);
