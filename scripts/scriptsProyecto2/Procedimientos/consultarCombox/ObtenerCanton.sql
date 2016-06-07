CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerCanton`(P_ID_PROVINCIA INT)
BEGIN
	select idCanton, descripcion
	from CANTON
	where ID_PROVINCIA = P_ID_PROVINCIA;
END