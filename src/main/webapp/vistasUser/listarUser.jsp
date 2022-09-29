
<%@page import="Modelo.Usuario"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="Modelo.Mascota"%>
<%@page import="ModeloDAO.MascotaDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Mascota"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.MascotaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>JSP Page</title>
    </head>
    
    <!--Andrea este codigo CSS lo puse solo para referenciar la tabla, los puedes eliminar-->
    <style>
    table, th, td {
    border:1px solid black;
    }
    </style>
    
    <body>
        <!---Contenedor-->
        <div class="container">
            <h1>Mascotas</h1>
            <a href="ControlUser?accion2=add">Agregar Nuevo</a>
            <br>
            <br>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Identificacion</th>
                        <th>Nombre</th>
                        <th>Telefono</th>
                        <th>Direccion</th>
                        <th>Mascota</th>
                        <th>Referencia</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                
                <!--Codigo Java-->
                <%
                    UsuarioDAO dao=new UsuarioDAO(); //Instanciamos la clase MascotaDao
                    List<Usuario>list=dao.listarUser(); //Listado del Objeto Mascota
                    Iterator<Usuario>iter=list.iterator(); //Hacemos el recorrido
                    Usuario per = null; //Variable Mascota inicializada en null
                    
                   //Recorrido
                    while(iter.hasNext()){
                        per=iter.next();
                    
                %>
                <tbody>
                    <tr>
        <!--Obtendremos los datos de la base de datos y los pondremos en la lista-->                                              
                        <td><%= per.getId_usuario()%></td>
                        <td><%= per.getIdentificacion_usuario()%></td>
                        <td><%= per.getNombre_usuario()%></td>
                        <td><%= per.getTelefono_usuario()%></td>
                        <td><%= per.getDireccion_usuario()%></td>
                        <td><%= per.getNombre_mascota_usuario()%></td>
                        <td><%= per.getNumero_referencia()%></td>
                       
                        <td>
                            <!--btn btn-warning Y btn btn-danger Para eliminar y editar -->
                            <a href="ControlUser?accion2=editar&id=<%= per.getId_usuario()%>">Editar</a>
                            <a href="ControlUser?accion2=eliminar&id=<%= per.getId_usuario()%>">Remove</a>
                        </td>
                       
                      
                    </tr>
                     <!--Cerramos con corchete el codigo java-->   
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>
