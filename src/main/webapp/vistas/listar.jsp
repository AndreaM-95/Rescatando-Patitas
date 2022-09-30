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
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <title>Rescatando Patitas</title>
            
        <link rel="stylesheet" href="css/reset.css">
        <link rel="icon" type="image/jpg" href="IMG/favicon.ico"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pacifico|Roboto:100,300,400,500,700,900" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="CSS/General/cuerpo-general.css">
        <link rel="stylesheet" href="CSS/Pagina-Principal/rodapie_pagPrincipal.css">
        <link rel="stylesheet" href="CSS/listar.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="CSS/General/rodapie-formularios.css">
    </head>
    
    
    <!--Andrea este codigo CSS lo puse solo para referenciar la tabla, los puedes eliminar-->
    <style>
        table, th, td {
            border: solid #CCE0E1;
        }
        .container-fluid{
            font-family: 'Montserrat';
            background: linear-gradient(45grad, #8EF4E9, #9F72E8);
            padding: 0;
        }
    
    </style>
    
    <body class="container-fluid">
        <header id="header-box">
            <nav id="header-nav">
                <a href="login.jsp" class="a"><button class="nav-link">Salir de la sesión</button></a>
            </nav>
        </header>
        <section class="banner">
            <div class="banner__imagen"><img src="IMG/banner.png" class="banner"></div>
            <h2 class="banner__titulo">Rescatando patitas</h2>
        </section>
        
        <!---Contenedor-->
        <div class="container">
            <h2 id ="titulousuarios" >Solicitudes rescate de mascotas</h2>
            <a href="Controlador?accion=add" ><button id="btnAgregar">Agregar Nuevo</button></a>
            <br>
            <br>
            <table id="tabla-box"> 
                <thead>
                    <tr id="fila-titulo">
                        <th class="dato">ID</th>
                        <th class="dato">Nombre</th>
                        <th class="dato">Direccion</th>
                        <th class="dato">Raza</th>
                        <th class="dato">Edad</th>
                        <th class="dato">Acciones</th>
                    </tr>
                </thead>
                
                <!--Codigo Java-->
                <%
                    MascotaDAO dao=new MascotaDAO(); //Instanciamos la clase MascotaDao
                    List<Mascota>list=dao.listar(); //Listado del Objeto Mascota
                    Iterator<Mascota>iter=list.iterator(); //Hacemos el recorrido
                    Mascota per = null; //Variable Mascota inicializada en null
                    
                   //Recorrido
                    while(iter.hasNext()){
                        per=iter.next();
                    
                %>
                <tbody>
                    <tr>
        <!--Obtendremos los datos de la base de datos y los pondremos en la lista-->                                              
                        <td class="dato-user"><%= per.getId()%></td>
                        <td class="dato-user"><%= per.getNombre_mascota()%></td>
                        <td class="dato-user"><%= per.getDireccion_mascota()%></td>
                        <td class="dato-user"><%= per.getRaza_mascota()%></td>
                        <td class="dato-user"><%= per.getEdad_mascota()%></td>
                       
                        <td class="dato-user">
                            <!--btn btn-warning Y btn btn-danger Para eliminar y editar -->
                            <a href="Controlador?accion=editar&id=<%= per.getId()%>"><button class="accion">Editar</button></a>
                            <a href="Controlador?accion=eliminar&id=<%= per.getId()%>"><button class="accion">Borrar</button></a>
                        </td>
                       
                      
                    </tr>
                     <!--Cerramos con corchete el codigo java-->   
                    <%}%>
                </tbody>
            </table>
        </div> 
     <!-------------------------------------------------------------->   
     
        <div class="container">
            <h2 id="titulousuarios">Solicitudes de adopción</h2>
            
            <a href="ControlUser?accion2=add"><button id="btnAgregar">Agregar Nuevo</button></a>
            <br>
            <br>
            <table id="tabla-box">
                <thead>
                    <tr id="fila-titulo" >
                        <th class="dato">ID</th>
                        <th class="dato">Identificacion</th>
                        <th class="dato">Nombre</th>
                        <th class="dato">Telefono</th>
                        <th class="dato">Direccion</th>
                        <th class="dato">Mascota</th>
                        <th class="dato">Referencia</th>
                        <th class="dato">Acciones</th>
                    </tr>
                </thead>
                
                <!--Codigo Java-->
                <%
                    UsuarioDAO dao2=new UsuarioDAO(); //Instanciamos la clase MascotaDao
                    List<Usuario>list2=dao2.listarUser(); //Listado del Objeto Mascota
                    Iterator<Usuario>iter2=list2.iterator(); //Hacemos el recorrido
                    Usuario per2 = null; //Variable Mascota inicializada en null
                    
                   //Recorrido
                    while(iter2.hasNext()){
                        per2=iter2.next();
                    
                %>
                <tbody>
                    <tr>
        <!--Obtendremos los datos de la base de datos y los pondremos en la lista-->                                              
                        <td class="dato-user"><%= per2.getId_usuario()%></td>
                        <td class="dato-user"><%= per2.getIdentificacion_usuario()%></td>
                        <td class="dato-user"><%= per2.getNombre_usuario()%></td>
                        <td class="dato-user"><%= per2.getTelefono_usuario()%></td>
                        <td class="dato-user"><%= per2.getDireccion_usuario()%></td>
                        <td class="dato-user"><%= per2.getNombre_mascota_usuario()%></td>
                        <td class="dato-user"><%= per2.getNumero_referencia()%></td>
                       
                        <td class="dato-user">
                            <!--btn btn-warning Y btn btn-danger Para eliminar y editar -->
                            <a href="ControlUser?accion2=editar&id=<%= per2.getId_usuario()%>"><button class="accion">Editar</button></a>
                            <a href="ControlUser?accion2=eliminar&id=<%= per2.getId_usuario()%>"><button class="accion">Borrar</button></a>
                        </td>
                       
                      
                    </tr>
                     <!--Cerramos con corchete el codigo java-->   
                    <%}%>
                </tbody>
            </table>

        </div>
              <!--todo || Pie de página || --> 
        <footer class="rodapie1">
            <img src="IMG/logo.png" class="rodapie-img1" alt="logo de Rescatando Patitas">
            <p class="rodapie-texto1">Universidad Tecnológica de Pereira</p>
            <p class="rodapie-texto1">&copy; Copyright - 2022</p>
        </footer>   
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</html>