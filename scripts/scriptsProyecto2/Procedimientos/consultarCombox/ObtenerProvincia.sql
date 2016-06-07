CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerProvincia`(P_ID_PAIS int)
BEGIN
	SELECT idProvincia, descripcion
	FROM PROVINCIA
	WHERE ID_PAIS = P_ID_PAIS;
END