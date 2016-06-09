CREATE TRIGGER `tg_insertCerveza_Bitacora` AFTER INSERT ON `cerveza`
 FOR EACH ROW BEGIN
	DECLARE id int(11);
    DECLARE nombreC varchar(45);
    DECLARE precioActual float(20);
    
    SELECT MAX(id_Cerveza) AS id FROM cerveza INTO id;
    SELECT precio from cerveza where id_Cerveza = id into precioActual;
    SELECT nombre from cerveza where id_Cerveza = id into nombreC;
    
    insert INTO bitacora(idBitacora,nombreCerveza,precioActual, precioAnterior)
    values 
    (null,nombreC, precioActual, null);
END