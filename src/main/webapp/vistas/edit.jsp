
<%@page import="ModeloDAO.MascotaDAO"%>
<%@page import="Modelo.Mascota"%>
<%@page import="ModeloDAO.MascotaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--Contenedor-->
        <div class="container">
            <div class="col-lg-6">
              <%
              //Codigo Java    
              MascotaDAO dao=new MascotaDAO(); //Instanciamos la clase MascotaDAO
              
              //Recibimos el valor que nos envia el controlador
              //Recibimos idper del controlador, con ese valor podemos mostrar los datos de la db
              int id=Integer.parseInt((String)request.getAttribute("idper"));
              
              //Creamos una variable Mascota haciendo referencia a la lista por id
              Mascota p=(Mascota)dao.list(id); 
          %>
            <h1>Modificar Mascota</h1>
            <!--Formulario-->
            <form action="Controlador">
                Nombre:<br>
                <input  type="text" name="txt_nombre_mascota" value="<%= p.getNombre_mascota()%>"><br>
                Direccion: <br>
                <input type="text" name="txt_direccion_mascota" value="<%= p.getDireccion_mascota()%>"><br>
                 Raza:<br>
                <input type="text" name="txt_Raza_mascota" value="<%= p.getRaza_mascota()%>"><br>
                 Edad:<br>
                <input type="text" name="txt_edad_mascota" value="<%= p.getEdad_mascota()%>"><br>
                <!--Este input hidden recibira el id-->
                <input type="hidden" name="txtid" value="<%= p.getId()%>">
                <input type="submit" name="accion" value="Actualizar">
                <!--Al presionar el boton regresar nos llevara a la lista-->
                <a href="Controlador?accion=listar">Regresar</a>
            </form>
          </div>
          
        </div>
                
    </body>
</html>
