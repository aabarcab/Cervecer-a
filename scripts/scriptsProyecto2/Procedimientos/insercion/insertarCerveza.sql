create procedure insertarCerveza(p_nombre varchar(45), p_precio float(11), p_caracteristicas varchar(45), p_alcohol float(11),
								 p_amargo varchar(45), p_temperatura varchar(45), p_tiempoFermentacion varchar(45), p_id_estilo int(11),
								 p_id_fabricante int(11), p_id_cuerpo int(11), p_id_color int(11), p_id_tipo_fermentacion int (11))
	insert into cerveza(id_cerveza,nombre,precio,caracteristicas,
							alcohol, amargo, temperatura,tiempoFermentacion, 
							id_estilo, id_fabricante, id_cuerpo, id_color,
							id_tipo_fermentacion) 
	VALUES(null, p_nombre, p_precio, p_caracteristicas, p_alcohol, 
				p_amargo, p_temperatura, p_tiempoFermentacion, p_id_estilo, 
				p_id_fabricante, p_id_cuerpo, p_id_color, p_id_tipo_fermentacion)
commit;