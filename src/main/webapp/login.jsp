<%-- 
    Document   : login
    Created on : 26/09/2022, 4:23:24 p. m.
    Author     : sebas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        
        <title>Rescatando Patitas</title>
        <link rel="icon" type="image/jpg" href="IMG/favicon.ico"/>
        <link rel="stylesheet" href="CSS/login/login.css">
        <link rel="stylesheet" href="CSS/General/cuerpo-general.css">
        <link rel="stylesheet" href="CSS/General/rodapie-formularios.css">
         <script>window.history.replaceState({}, document.title, "/" + "login.jsp");</script>

        <style>
            body{
                font-family: 'Montserrat';
            }
            
            .nav-link, .a{
                text-decoration: none;
            }
        </style>
    </head>
    <body class="container-fluid">
        
        <header id="header-box">
            <nav id="header-nav">
                <a href="index.jsp" class="a">
                    <button class="nav-link">inicio</button>
                </a>
                <a href="adoptar.jsp" class="a">
                    <button class="nav-link">Adoptar Mascota</button>
                </a>
                <a href="dar-adopcion.jsp" class="a">
                    <button class="nav-link">Registrar Mascota</button>
                </a>
                <a href="login.jsp" class="a"><button class="nav-link">login</button></a>
            </nav>
        </header>
        
         <!--todo || Banner || -->
        <section class="banner">
            <div class="banner__imagen"><img src="IMG/banner.png" class="banner"></div>
                <h2 class="banner__titulo">Rescatando patitas</h2>
            </img>
        </section>
       
        <div id="form">
            <!La funcion action nos lleva al index, toca cmabiarla por la basede datos>
            <form action="ControladorLogin">
                <div class="form-group"
                <P id="saludo">&#128062; Bienvenido miembro de la familia Rescatando Patitas &#128062;</P>
                </div>
                <div class="form-group">
                    <label id="dato">Usuario:</label>
                    <input class="form-control" type="text" name="txtnom" placeholder="&#128100; Ingrese su Usuario">
                </div>
                <div class="form-group">
                    <label id="dato">Contraseña:</label>
                    <input type="password" name="txtpass" placeholder="&#128273; Ingrese su Contraseña" class="form-control">
                </div>
                <input class="boton" type="submit" name="accioningresar" value="Ingresar">
                
            </form>
        </div>
        <!--todo || Rodapie || --> 
        <footer class="rodapie1">
            <img src="IMG/logo.png" class="rodapie-img1" alt="logo de Rescatando Patitas">
            <p class="rodapie-texto1">Universidad Tecnológica de Pereira</p>
            <p class="rodapie-texto1">&copy; Copyright - 2022</p>
        </footer>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
