CREATE DEFINER=`root`@`localhost` PROCEDURE `UPD_PROVINCIA`(P_DESCRIPCION VARCHAR(45), P_NEW_DESCRIPCION VARCHAR(45),
								P_NEW_ID_PAIS INT(11))

	UPDATE PROVINCIA
SET DESCRIPCION = P_NEW_DESCRIPCION,
	ID_PAIS = P_NEW_PAIS
    WHERE DESCRIPCION = P_DESCRIPCION;
