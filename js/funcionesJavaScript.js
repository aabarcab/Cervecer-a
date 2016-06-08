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

function registrarPersona()
{
    $nombre = $("#nombre").val();
    $apellidoUno = $("#primerApellido").val();
    $apellidoDos = $("#segundoApellido").val();
    $cedula = $("#cedula").val();
    $correo= $("#correo").val();
    $foto = null;
    $direccion = $("#direccion").val();
    $id_distrito = $("#distrito").val();
    $id_usuario = null;
    //alert ($nombre + $apellidoUno + $apellidoDos + $cedula + $correo + $foto + $direccion + $id_distrito + $id_usuario);
    if($nombre == "" ){
        alert ("Por favor rellene todos los espacios");
    }

    else{ 
        $.ajax({

            dataType: "json",
            data: {"nombre": $nombre, "apellidoUno":$apellidoUno,
            "apellidoDos":$apellidoDos, "cedula":$cedula, "correo":$correo, "foto":$foto, 
            "direccion":$direccion, "id_distrito":$id_distrito, "id_usuario": $id_usuario},
            url:   'funcionesPHP/Registrar.php',
            type:  'post',

            beforeSend: function(){
                //Lo que se hace antes de enviar el formulario
            },
            success: function(){
                //lo que se si el destino devuelve algo
                //var_dump(respuesta.html);
              
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