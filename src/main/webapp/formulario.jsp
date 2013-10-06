<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="public/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <title>Demo Validacion</title>
    </head>
    <body>
        <div class="container">
            <h1>Validacion con JQUERY</h1>
            <form id="formValidacion" action="" method="">
                <div class="control-group">
                    <label class="control-label">Nombre
                        <input type="text" name="nom" class="span2" placeholder="nombre">
                    </label>
                </div>    
                <div class="control-group">
                    <label class="control-label">Tu sistema Favorito
                        <select name="lista">
                            <option value="0">No Indica</option>
                            <option value="1">Windows</option>
                            <option value="2">Linux</option>
                        </select>
                    </label>
                </div>   
                <div class="control-group">
                    <label class="control-label">¿Te gusta el fútbol?
                        <input type="checkbox" name="chk" class="span1">
                    </label>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <label class="radio" >¿Cuál es tu sexo?</label>
                        <input type="radio" name="sexo" class="span1" >Hombre<br/>
                        <input type="radio" name="sexo" class="span1" >Mujer
                    </div>
                    <div class="controls">
                        <label for="sexo" style="display: none;" class="error">Este campo es obligatorio</label>
                    </div>
                    </label>
                </div>
                <div class="control-group">                
                    <label class="control-label">Aficiones
                        <textarea name="aficion" rows="4" cols="20">
                        </textarea>
                    </label>
                </div>
                <div class="btn-group">
                    <button class="btn btn-primary">Enviar</button>
                    <button class="btn  ">Retornar</button>
                </div>
            </form>
            <script src="http://code.jquery.com/jquery.js"></script>
            <script src="public/bootstrap/js/bootstrap.min.js"></script>
            <script src="public/jvalidation/jquery.validate.min.js"></script>
            <script src="public/jvalidation/messages_es.js"></script>
            <script>
                $(function() {
                    $("#formValidacion").validate({
                        rules: {
                            nom: {required: true}

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
        </div>
    </body>
</html>
