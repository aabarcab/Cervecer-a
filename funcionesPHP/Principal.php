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
	   	$resultado = mysql_query($consulta);
	    
	 
	    return $resultado;
	}

	function ObtenerCanton($idProvincia)
	{
		$resultado = false; // contendra el arreglo de las provincias

	 	$connection = conectar();
		$consulta= "call obtenerCanton(".$idProvincia.")";
	    if($idProvincia != ''){
	    	$consulta= "call ObtenerCanton(".$idProvincia.")";
	    }

	 
	    $conexion = conectar();

	   	$resultado = mysql_query($consulta);
	    
	 
	    return $resultado;
	}

	function obtenerDistrito($idCanton)
	{
		$resultado = false; // contendra el arreglo de las provincias

	 	$connection = conectar();
		$consulta= "call obtenerDistrito(".$idCanton.")";
	    if($idCanton != ''){
	    	$consulta= "call obtenerDistrito(".$idCanton.")";
	    }

	 
	    $conexion = conectar();
	   	$result = mysql_query($consulta);
	    
	 
	    return $result;		
	}

	function registrarPersonaPHP($nombre, $apellidoUno, $apellidoDos, $cedula, 
								$correo, $foto, $direccion, $id_distrito, $id_usuario)
	{	
		if($id_usuario == null){
			$id_usuario = "null";
		}
		$connection = conectar();

		$insercion = 'call insertarPersonas("'.$nombre.'", "'.$apellidoUno.'", "'.$apellidoDos.'", "'.$cedula.'", "'.$correo.'","'.$foto.'","'.$direccion.'",'.$id_distrito.','.$id_usuario.')';

		mysql_query($insercion);
		echo $insercion;

	}


?>
