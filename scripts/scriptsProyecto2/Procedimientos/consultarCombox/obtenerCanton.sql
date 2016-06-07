create procedure obtenerCanton(p_id_provincia int(11))
select idCanton, descripcion
from canton
where id_provincia = p_id_provincia;
