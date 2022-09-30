<%@page import="ModeloDAO.MascotaDAO"%>
<%@page import="Modelo.Mascota"%>
<%@page import="ModeloDAO.MascotaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="../CSS/reset.css">
        <link rel="icon" type="image/jpg" href="IMG/favicon.ico"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pacifico|Roboto:100,300,400,500,700,900" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
        <title>Agregar Registro</title>
        <link rel="stylesheet" href="CSS/General/cuerpo-general.css">
        <link rel="stylesheet" href="CSS/Pagina-Principal/rodapie_pagPrincipal.css">
        <link rel="stylesheet" href="CSS/listar.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="/CSS/General/rodapie-formularios.css">
        <style>
            .banner__imagen{
                height: 12rem;
            }

            .banner__titulo{
                color: black;
                font-family: 'Pacifico', cursive;
                font-size: 3.8rem;
                position: absolute;
                text-align: center;
                text-shadow: 0 4px 4px rgba(0, 0, 0, 0.7);
                transform: translate(0, -260%);
            }


            .container-fluid{
            font-family: 'Montserrat';
            background: linear-gradient(45grad, #8EF4E9, #9F72E8);
            padding: 0;
        }

            /*todo navegación y banner*/
            #header-box{
                height: 4rem;
                justify-content: flex-end;
                padding: .3rem;
                align-items: center;
            }
            
            
            
            .form-control{
               border-radius: 1rem;
               height: 2rem;
               padding: .5rem;
               font-size: 1.1rem;
               width: 60%;
            }
            
            h1{
               text-align: center;
               font-weight: 600;
               color: white;
               text-shadow: 2px 5px 5px rgba(0, 0, 0, .4);
               font-size: 1.5rem;
               margin: 1rem 0 2rem 0;
            }
        </style>
    </head>
    <body class="container-fluid">
        <header id="header-box">
            <nav id="header-nav">
                <a href="listar.jsp" class="a"><button class="nav-link">Volver a registros</button></a>
            </nav>
        </header>
        <section class="banner">
            <div class="banner__imagen"><img src="IMG/banner.png" class="banner"></div>
            <h2 class="banner__titulo">Rescatando patitas</h2>
        </section>
        <!--Contenedor-->
        <div>
            <div class="box-formulario">
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
            <form action="Controlador" class="form-group">
                <label class="label">Nombre:</label>
                <input  type="text" name="txt_nombre_mascota" value="<%= p.getNombre_mascota()%>" class="form-control">
                <label class="label">Direccion:</label>
                <input type="text" name="txt_direccion_mascota" value="<%= p.getDireccion_mascota()%>" class="form-control">
                <label class="label">Raza:</label>
                <input type="text" name="txt_Raza_mascota" value="<%= p.getRaza_mascota()%>" class="form-control">
                <label class="label">Edad:</label>
                <input type="text" name="txt_edad_mascota" value="<%= p.getEdad_mascota()%>" class="form-control">
                <!--Este input hidden recibira el id-->
                <input type="hidden" name="txtid" value="<%= p.getId()%>">
                
                <button type="submit" name="accion" value="Actualizar" id="btn-regresar" class="btn btn-info" >Actualizar</button>
                <!--Al presionar el boton regresar nos llevara a la lista-->
                <a href="Controlador?accion=listar"><button id="btn-regresar" class="btn btn-info"  name="accion" value="listar">Regresar</button></a>
            </form>
          </div>
          
        </div>
                                  <!--todo || Pie de página || --> 
        <footer class="rodapie1">
            <img src="IMG/logo.png" class="rodapie-img1" alt="logo de Rescatando Patitas">
            <p class="rodapie-texto1">Universidad Tecnológica de Pereira</p>
            <p class="rodapie-texto1">&copy; Copyright - 2022</p>
        </footer>   
    </body>
</html>
