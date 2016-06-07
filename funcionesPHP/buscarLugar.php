<?php
include("Principal.php");
if(isset($_POST['idPais'])){
 
    $provincia = obtenerProvincia($_POST["idPais"]);
 	
    $html = "<option value=''>- Seleccione un Provincia -</option>";
    while ($fila = mysql_fetch_row($provincia)) {
           	$html .= "<option value = '".$fila['0']."'>".$fila['1']."</option>";

         	};
    $respuesta = array("html"=>$html);

    echo json_encode($respuesta);
}

?>
