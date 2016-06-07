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

	function obtenerProvincia($idPais)
	{

	$resultado = false; // contendra el arreglo de las provincias

 	$connection = conectar();
	$consulta= "call obtenerProvincia(".$idPais.")";
    if($idPais != ''){
    $consulta= "call obtenerProvincia(".$idPais.")";
    }

 
    $conexion = conectar();
   	$result = mysql_query($consulta);
    
 
    return $result;
	}





?>
