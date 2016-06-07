function buscarProvincia(){
    $("#canton").html("<option value=''>- Primero seleccione una Provincia -</option>");
 
    $idpais = $("#pais").val();
 	
    if($idpais == "" ){

           
    }
    else{
    	$.ajax({
            dataType: "json",
            data: {"idPais": $idpais},
            url:   'funcionesPHP/buscarLugar.php',
            type:  'post',
            beforeSend: function(){
                //Lo que se hace antes de enviar el formulario
                },
            success: function(respuesta){
                //lo que se si el destino devuelve algo
                //var_dump(respuesta.html);
                $("#provincia").html(respuesta.html);
              
            },
            error:    function(xhr,err){ 


                alert("readyState: "+ xhr.readyState +"\nstatus: "+xhr.status+"\n \n responseText: "+ xhr.responseText);
            }
        });
    };
   
}
function adios()
{
	alert("pui");
}