<?php

	include("Connection.php");/*incluye el archivo donde esta la coneccion 
							esta se puede modificar en el archivo*/
	function conectar()
	{

	 $connection = dbConnect();
	 return $connection;

	}

	function obtenerPaises(){

		$connection = conectar();
		$Paises = "call obtenerPaises()";
    	

    	 
         try {

         	$result = mysql_query($Paises); // ejecuta la consulta

  			while ($fila = mysql_fetch_row($result)) {
           	echo "<option value = '".$fila['0']."'>".$fila['1']."</option>";
         	};

	    }

	    catch(PDOException $e){
	        echo "<option value = '".""."'>"."ERROR_PHP_PRINCIPAL"."</option>";
	            
	    }

	}


?>
