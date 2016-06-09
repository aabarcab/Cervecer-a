Create Event `comprasDiario` ON SCHEDULE EVERY 24 HOUR STARTS  now() 
ON COMPLETION NOT PRESERVE ENABLE DO 
SELECT co.pseudonimo, ce.nombre, c.cantidad
FROM compra c
INNER JOIN comprador co on comprador.idComprador = compra.id_comprador
INNER JOIN cerveza ce on cerveza.id_Cerveza = compra.id_cerveza
where fechaCreacion between current_date()-1 and current_date()