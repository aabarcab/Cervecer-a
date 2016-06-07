create procedure obtenerProvincia(p_id_pais int(11))
select idProvincia, descripcion
from provincia
where id_pais = p_id_pais;

