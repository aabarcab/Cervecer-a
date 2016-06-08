function buscarProvincia()
{

  
    $idpais = $("#pais").val();
    if($idpais == "" ){

    
        $("#provincia").html("<option value=''>- Primero seleccione una País-</option>");
        $("#canton").html("<option value=''>- Primero seleccione una Provincia -</option>");
        $("#distrito").html("<option value=''>- Primero seleccione un canton -</option>");
    }
    else{
    	$.ajax({
            dataType: "json",
            data: {"idPais": $idpais},
            url:   'funcionesPHP/buscarLugar.php',
            type:  'post',
            beforeSend: function(){
                //Lo que se hace antes de enviar el formulario
                
                  $("#canton").html("<option value=''>- Primero seleccione una Provincia -</option>");
                  $("#distrito").html("<option value=''>- Primero seleccione un canton -</option>");
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

function buscarCanton()
{
    
    $("#distrito").html("<option value=''>- Primero seleccione un canton -</option>");
    $idProvincia = $("#provincia").val();
    
    if($idProvincia == "" ){
            $("#canton").html("<option value=''>- Primero seleccione una Provincia -</option>");
            $("#distrito").html("<option value=''>- Primero seleccione un canton -</option>");
    }
    else{
        $.ajax({
            dataType: "json",
            data: {"idProvincia": $idProvincia},
            url:   'funcionesPHP/buscarLugar.php',
            type:  'post',
            beforeSend: function(){
                //Lo que se hace antes de enviar el formulario
                $("#distrito").html("<option value=''>- Primero seleccione un canton -</option>");
                },
            success: function(respuesta){
                //lo que se si el destino devuelve algo
                //var_dump(respuesta.html);
                $("#canton").html(respuesta.html);
                $("#distrito").html("<option value=''>- Primero seleccione un canton -</option>");
              
            },
            error:    function(xhr,err){ 


                alert("readyState: "+ xhr.readyState +"\nstatus: "+xhr.status+"\n \n responseText: "+ xhr.responseText);
            }
        });
    };
}

function buscarDistrito()
{
    $idCanton = $("#canton").val();
    if($idCanton == "" ){

        $("#distrito").html("<option value=''>- Selecione - Distrito -</option>");
            
    }
    else{
        $.ajax({
            dataType: "json",
            data: {"idCanton": $idCanton},
            url:   'funcionesPHP/buscarLugar.php',
            type:  'post',
            beforeSend: function(){
                //Lo que se hace antes de enviar el formulario
                },
            success: function(respuesta){
                //lo que se si el destino devuelve algo
                //var_dump(respuesta.html);
                $("#distrito").html(respuesta.html);
              
            },
            error:    function(xhr,err){ 


                alert("readyState: "+ xhr.readyState +"\nstatus: "+xhr.status+"\n \n responseText: "+ xhr.responseText);
            }
        });
    }
}


function adios()
{
    $Izcar = $("#nombre").val();
    alert($Izcar);
}