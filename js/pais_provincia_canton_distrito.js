function buscarProvincia(){
    $("#canton").html("<option value=''>- Primero seleccione una Provincia -</option>");
 
    $idpais = $("#pais").val();
 	
    if($idpais == "" ){

            $("#provincia").html("<option value=''> Primero seleccione una País </option>");
    }
    else{
    	$("#provincia").html("<option value=''> Puta </option>");
    	$.ajax({
            dataType: "json",
            data: {"pais": $idpais},
            url:   'funcionesPHP/buscarLugar.php',
            type:  'post',
            beforeSend: function(){
                //Lo que se hace antes de enviar el formulario
                },
            success: function(respuesta){
                //lo que se si el destino devuelve algo
                alert($idpais);
            },
            error:    function(xhr,err){ 
                alert("readyState: "+ $idpais +"\nstatus: "+xhr.status+"\n \n responseText: "+xhr.responseText);
            }
        });
    };
   
}
function adios()
{
	alert("pui");
}