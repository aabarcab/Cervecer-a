Create Event `cervezasDiarias` ON SCHEDULE EVERY 24 HOUR STARTS  now() 
ON COMPLETION NOT PRESERVE ENABLE DO 
select nombre, precio 
from cerveza 
where fechaCreacion between current_date()-1 and current_date()