<!DOCTYPE html>
<?php
    include ('funcionesPHP/Principal.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Registro cervezas - Maison de la Bière</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/business-casual.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div class="brand">Maison de la Bière</div>
    <div class="address-bar">Maison de la Bière | Costa Rica, 2016 </div>

    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="index.html">Business Casual</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="index.html">Inicio</a>
                    </li>
                    <li>
                        <a href="" class="dropdown-toggle" data-toggle="dropdown">Registros<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href = "registroCervezas.html" >Cerveza</a></li>
                            <li><a href = "registroPersonas.html">Persona</a></li>
                            <li><a href = "registroOtros.html">Otros</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="" class="dropdown-toggle" data-toggle="dropdown">Modificaciones<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href = "modificarCervezas.html">Cerveza</a></li>
                            <li><a href = "modificarPersonas.html">Persona</a></li>
                            <li><a href = "modificarOtros.html">Otros</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="" href="" class="dropdown-toggle" data-toggle="dropdown">Consultas<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href = "ConsultarCerveza.html">Cerveza</a></li>
                            <li><a href = "ConsultarComprador.html">Comprador</a></li>
                            <li><a href = "Estadisticas.html">Estadísticas</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="contact.html">Contacto</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center"><strong>Registro Cervezas</strong>
                    </h2>
                    <hr>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <hr>
                        <h1 class="intro-text text-center"><strong>Ingrese los datos de la Cerveza</strong>
                        </h1>
                        <hr>
                        <form name="formRegistroCervezas"  method="post"  action="prueba.php" >
                            <div class="row">
                                <div class="form-group col-lg-4">
                                    <label>Nombre</label>
                                    <input type="text" name="nombre" required="required" id="nombre" class="form-control">
                                </div>
                                <div class="form-group col-lg-4">
                                    <label>Características</label>
                                    <input type="text" name="caracteristicas" required="required" id="caracteristicas"  class="form-control">
                                </div>
                                <div class="form-group col-lg-4">
                                    <label>Precio</label>
                                    <input type="tel" name="precio" id="precio" required="required" class="form-control">
                                </div>
                                 <div class="form-group col-lg-4">
                                    <label>Porcentaje de alcohol</label>
                                    <input type="tel" name="porcentaje" id="porcentaje" required="required" class="form-control">
                                </div>
                                 <div class="form-group col-lg-4">
                                    <label>Amargor</label>
                                    <input type="tel" name="amargo" required="required" id="amargo"class="form-control">
                                </div>
                                 <div class="form-group col-lg-4">
                                    <label>Temperatura</label>
                                    <input type="tel" name="temperatura" required="required" id="temperatura" class="form-control">
                                </div>
                                <div class="form-group col-lg-4">
                                    <label>Tiempo de fermentación</label>
                                    <input type="tel" name="tiempo" id="tiempo" required="required" class="form-control">

                                </div>
                                 
                                <div class="form-group col-lg-4">
                                    <label>Familia</label>
                                  <select class = "form-control" name="familia" id = "familia">
                                        <option value= "" >-Selecionar Familia-</option>
                                        <?php
                                        obtenerFamilias();
                                        ?>
                                    </select>
                                </div>

                                <div class="form-group col-lg-4">
                                    <label>Estilo</label>
                                  <select class = "form-control" name="estilo" id = "estilo">
                                        <option value= "" >-Selecionar estilo-</option>
                                        <?php
                                        obtener_Estilos();
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group col-lg-4">
                                    <label>Tipo de Fermentación</label>
                                  <select class = "form-control" name="tipoFermentacion"  id ="tipoFermentacion">
                                        <option value= "" >Selecionar Tipo Fermentacion</option>
                                        <?php
                                           obtenerTipoFermentacion();
                                        ?>
                                    </select>
                                </div>

                                <div class="form-group col-lg-4">
                                    <label>Fabricante</label>
                                  <select class = "form-control" name="fabricante" id = "fabricante">
                                        <option value= "" >-Selecionar fabricante-</option>
                                        <?php
                                        obtener_fabricantes();
                                        ?>
                                    </select>
                                </div>

                                <div class="form-group col-lg-4">
                                    <label>Cuerpo</label>
                                  <select class = "form-control" name="cuerpo" id = "cuerpo">
                                        <option value= "" >-Selecionar cuerpo-</option>
                                        <?php
                                        obtener_cuerpo();
                                        ?>
                                    </select>
                                </div>
                                
                                <div class="form-group col-lg-4">
                                    <label>Color</label>
                                  <select class = "form-control" name="color" id = "color">
                                        <option value= "" >-Selecionar color-</option>
                                        <?php
                                        obtener_colores();
                                        ?>
                                    </select>
                                </div>
                             
                                
                                <div class="form-group col-lg-12">
    
                                <button id="registrar" name="registrar" class="btn btn-default">Registrar</button>     
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
               
            </div>
        </div>
    </div>
    <!-- /.container -->

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</body>

</html>
