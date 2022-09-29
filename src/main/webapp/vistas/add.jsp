
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--Codigo Boostrap, lo estaba añadiendo pero ya el front se va a encargar--->
        <div class="container">
            <div class="col-lg-6">
                <h1>Agregar Mascota</h1>               
                <!--Action significa que todo lo que se envia llegara al controlador-->
                <form action="Controlador">
                    Nombre:<br>
                    <input type="text" name="txt_nombre_mascota"><br>
                    Direccion: <br>
                    <input type="text" name="txt_direccion_mascota"><br>
                    Raza:<br>
                    <input type="text" name="txt_Raza_mascota"><br>
                    Edad<br>
                    <input type="text" name="txt_edad_mascota"><br>
                    <input type="submit" name="accion" value="Agregar">
                    <a href="Controlador?accion=listar">Regresar</a>
                </form>
            </div>

        </div>
    </body>
</html>
