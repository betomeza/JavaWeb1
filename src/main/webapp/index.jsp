<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="public/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <title>Formulario</title>
        <style>
            body {
                padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
            }
            h1{
                padding-left: 210px;
            }
        </style>        
    </head>
    <body>
        <h1>Aplicacion Ejemplo</h1>
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="brand" href="#">Project name</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#about">About</a></li>
                            <li><a href="#contact">Contact</a></li>
                        </ul>
                    </div><!--/.nav-collapse -->
                </div>
            </div>
        </div>

        <div class="container">
            <h2>Bootstrap starter template</h2>
            <p>Use this document as a way to quick start any new project.<br> All you get is this message and a barebones HTML document.</p>
            <form id="formIngreso" name="f1" action="" method="post">
                <div class="control-group">
                    Nombre:<input type="text" name="nom" class="span2" placeholder="usuario"> <br/>
                    Clave: <input type="password" name="clave" class="span2" placeholder="contraseña"> <br/>
                    <input type="submit" value="Enviar" class="btn btn-primary">
                </div>
            </form>
            <script src="http://code.jquery.com/jquery.js"></script>
            <script src="public/bootstrap/js/bootstrap.min.js"></script>
            <script src="public/jvalidation/jquery.validate.min.js"></script>
            <script src="public/jvalidation/messages_es.js"></script>
            <script>
                $(function() {
                    $("#formIngreso").validate({
                        rules: {
                            nom: {required: true},
                            clave: {required: true}
                        },
                        highlight: function(element) {
                            $(element).closest('.control-group').removeClass('success').addClass('error');
                        },
                        success: function(element) {
                            element
                                    .text('OK!').addClass('valid')
                                    .closest('.control-group').removeClass('error').addClass('success');
                        }


                    });

                });
            </script>
        </div> <!-- /container -->
    </body>
</html>

