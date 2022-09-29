
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="CSS/reset.css">
        <link rel="icon" type="image/jpg" href="./recursos/favicon.ico"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pacifico|Roboto:100,300,400,500,700,900" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="CSS/General/cuerpo-general.css">
        <link rel="stylesheet" href="CSS/Pagina-Principal/rodapie_pagPrincipal.css">
        <link rel="stylesheet" href="CSS/listar.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="CSS/General/rodapie-formularios.css">
        
        
        <title>Rescatando Patitas</title>
    </head>
    <body>
        <!--Codigo Boostrap, lo estaba añadiendo pero ya el front se va a encargar--->
        <div class="container">
            <div class="col-lg-6">
                <h1>Agregar Mascota</h1>               
                <!--Action significa que todo lo que se envia llegara al controlador-->
                <form action="ControlUser" class="tabla-box"> 
                    Identificacion<br>
                    <input type="text" name="txt_identificacion_usuario"><br>
                    Nombre: <br>
                    <input type="text" name="txt_nombre_usuario"><br>
                     Telefono:<br>
                    <input type="text" name="txt_telefono_usuario"><br>
                    Direccion<br>
                    <input type="text" name="txt_direccion_usuario"><br>
                    Mascota<br>
                    <input type="text" name="txt_mascota_usuario"><br>
                    Referencia<br>
                    <input type="text" name="txt_mascota_referencia_usuario"><br>
                                        
                    
                    <input type="submit" name="accion2" value="Agregar">
                    <a href="ControlUser?accion2=listar">Regresar</a>
                </form>
            </div>

        </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
