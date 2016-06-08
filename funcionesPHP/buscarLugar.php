<?php
	include("Principal.php");

	if(isset($_POST['idPais'])){
	 
	    $provincia = obtenerProvincia($_POST["idPais"]);
	 	
	    $html = "<option value=''> Seleccione - Provincia </option>";
	    while ($fila = mysql_fetch_row($provincia)) {
	           	$html .= "<option value = '".$fila['0']."'>".$fila['1']."</option>";

	     };
	}

	if(isset($_POST['idProvincia'])){
	 
	    $canton = obtenerCanton($_POST["idProvincia"]);
	 	
	    $html = "<option value=''> Seleccione - Canton </option>";
	    while ($fila = mysql_fetch_row($canton)) {
	           	$html .= "<option value = '".$fila['0']."'>".$fila['1']."</option>";

	         	};
	}

	if(isset($_POST['idCanton'])){
	 
	    $distrito = obtenerDistrito($_POST["idCanton"]);
	 	
	    $html = "<option value=''> Seleccione - Canton </option>";
	    while ($fila = mysql_fetch_row($distrito)) {
	           	$html .= "<option value = '".$fila['0']."'>".$fila['1']."</option>";

	         	};
	}
	/*aqui se guardaran todos los resultados cada vez que se haga un evento */
	$respuesta = array("html"=>$html);

	echo json_encode($respuesta);
	?>
