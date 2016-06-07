create procedure obtenerDistrito(p_id_canton int(11))
select idDistrito, descripcion
from distrito
where id_canton = p_id_canton;
