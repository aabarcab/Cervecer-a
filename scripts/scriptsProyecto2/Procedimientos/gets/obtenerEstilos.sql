DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerEstilos`(IN `pIdFamilia` INT(11))
SELECT
  idEstilo, descripcion
FROM
  estilo
  where estilo.id_familia = pIdFamilia
ORDER BY
  descripcion$$
DELIMITER ;