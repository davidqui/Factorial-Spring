<!DOCTYPE html>
<html>
    <head>
        <title>Factorial</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        </head>
    <body>

        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-body">
                    <div class="row">
                        <div class="col">
                            <div class="jumbotron">
                                <h3 class="display-4">EJERCICIO PARA CONVERTIR UNA APP DE CONSOLA A SPRING!</h3>
                                </div>
                    <#if msg_error??>
                            <div class="alert alert-danger" role="alert">
                        ${msg_error}
                                </div>
                    <#elseif msg_ok??>
                            <div class="alert alert-success" role="alert">
                        ${msg_ok}
                                </div>
                    <#else>
                            <div class="alert alert-info" role="alert">
                                Ingrese el numero que quiere hallar el factorial.
                                </div>
                </#if>
                            </div>
                        </div>
                    <form action="/controller/find"  method="POST">
                        <div class="form-group">
                            <div class="panel panel-primary">
                                <div class="panel-heading"><h1><i class="far fa-hand-point-right"></i>
                                        Hallar el Factorial
                                        <i class="fas fa-exclamation"></i>
                                        <!--<i class="far fa-hand-point-down"></i>-->
                                    <!--<i class="fas fa-sort-numeric-down"></i>--> 
                                        </h1></div>
                                <div class="panel-body">

<!--<label for="factorialLabel" class="display-4"></label>-->
                                    <input type="number" class="form-control" id="valor" name="valor" value="" placeholder="Ingrese un numero porfavor" />  

                                    </div>
                                <button type="submit" class="btn btn-primary">
                                    <a class="btn btn-default" href="path/to/settings" aria-label="Settings">
                                        <i class="fa fa-cog fa-spin fa-3x fa-fw" aria-hidden="true"></i>
                                        <!--<i class="fas fa-play"></i>-->
                                        </a> 
                                    enviar </button>
                                </div>
                            </div>
                        </form>
                     <#if factorial??>
                    <div class="alert alert-success" role="alert">
                        <label for="numero">



                            <i class="fab fa-edge"></i>L
                            &nbsp;
                            <i class="fas fa-registered"></i>
                            <i class="fab fa-edge"></i>
                            <i class="fab fa-stripe-s"></i>
                            <i class="fas fa-underline"></i>
                            L
                            <i class="fab fa-tumblr"></i>
                            <i class="fas fa-font"></i>
                            <i class="fab fa-dyalog"></i>
                            <i class="fab fa-opera"></i>
                            &#160;&#160;
                            <i class="fab fa-edge"></i>
                            <i class="fab fa-stripe-s"></i>&#160;
                            : &#160;  
                            
                             ${factorial}</label>

                                <#else>
                        <div class="alert alert-danger" role="alert">
                            Esperando que ingrese un valor <i class="fa fa-spinner fa-spin fa-3x fa-fw"></i>
                            </div>
                                </#if>
                        </div>
                    </div>
                </div>

            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
            <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
        </body>

    </html> 
