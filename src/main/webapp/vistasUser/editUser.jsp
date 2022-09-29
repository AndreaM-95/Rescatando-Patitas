
<%@page import="Modelo.Usuario"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
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
              UsuarioDAO dao=new UsuarioDAO(); //Instanciamos la clase MascotaDAO
              
              //Recibimos el valor que nos envia el controlador
              //Recibimos idper del controlador, con ese valor podemos mostrar los datos de la db
              int id=Integer.parseInt((String)request.getAttribute("idper"));
              
              //Creamos una variable Mascota haciendo referencia a la lista por id
              Usuario p=(Usuario)dao.listUser(id); 
          %>
            <h1>Modificar Mascota</h1>
            <!--Formulario-->
            <form action="ControlUser">
                Identificacion<br>
                <input  type="text" name="txt_identificacion_usuario" value="<%= p.getIdentificacion_usuario()%>"><br>
                Nombre Usuario <br>
                <input type="text" name="txt_nombre_usuario" value="<%= p.getNombre_usuario()%>"><br>
                 Telefono<br>
                <input type="text" name="txt_telefono_usuario" value="<%= p.getTelefono_usuario()%>"><br>
                 Direccion<br>
                <input type="text" name="txt_direccion_usuario" value="<%= p.getDireccion_usuario()%>"><br>
                 Mascota<br>
                <input type="text" name="txt_mascota_usuario" value="<%= p.getNombre_mascota_usuario()%>"><br>
                 Referencia<br>
                <input type="text" name="txt_mascota_referencia_usuario" value="<%= p.getNumero_referencia()%>"><br>
                <!--Este input hidden recibira el id-->
                <input type="hidden" name="txtid" value="<%= p.getId_usuario()%>">
                <input type="submit" name="accion2" value="Actualizar">
                <!--Al presionar el boton regresar nos llevara a la lista-->
                <a href="ControlUser?accion2=listar">Regresar</a>
            </form>
          </div>
          
        </div>
    </body>
</html>
