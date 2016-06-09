DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerTipoFermentacion`()
SELECT
  idTipoFermentacion, descripcion
FROM
  tipofermentacion
ORDER BY
  descripcion$$
DELIMITER ;