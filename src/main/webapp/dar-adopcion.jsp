<%-- 
    Document   : dar-adopcion.jsp
    Created on : 20 sept 2022, 19:29:44
    Author     : Z
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <script>window.history.replaceState({}, document.title, "/" + "dar-adoptar.jsp");</script>

        <title>Rescatando Patitas</title>

        <link rel="stylesheet" href="css/reset.css">
        <link rel="icon" type="image/jpg" href="./recursos/favicon.ico"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pacifico|Roboto:100,300,400,500,700,900" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
        <script>window.history.replaceState({}, document.title, "/" + "dar-adoptar.jsp");</script>
        <link rel="stylesheet" href="CSS/General/cuerpo-general.css">
        <link rel="stylesheet" href="CSS/Dar-Adopcion/formulario-adopcion.css">
        <link rel="stylesheet" href="CSS/General/rodapie-formularios.css">
        <link rel="stylesheet" href="CSS/responsive/general-y-rodapies.css">
        <link rel="stylesheet" href="CSS/responsive/formularios.css">
    </head>

    <body class="container-fluid">

        <!--todo || Barra de navegación || --> 
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
            <div class="banner__imagen"><img src="IMG/banner.png" class="banner"></img></div>
                <h2 class="banner__titulo">Rescatando patitas</h2>
            </img>
        </section>

        <div class="parrafo-1">
            <p class="form_texto-1">Querido usuario, completa el siguiente formulario y nos comunicaremos contigo lo antes posible para recoger al peludito.</br></p>
            <p class="form_texto-2">&#128150 ¡¡Gracias por confiar en nosotros!! &#128062;</p>
        </div>

        <!--todo || Formulario de dar en adopción || --> 
        <main id="main-box1">
            <section id="formulario-1">
                <form class="form-box-1" action ="Controlador" >
                    <!--action="https://formsubmit.co/rescatandopatitasutp@gmail.com"--->
                    <label class="text-label-1">Nombre Mascota:</label>
                    <input id="nombre_usuario" class="form_dato-1" type="text" name="txt_nombre_mascota" placeholder="&#128054; Texto aquí"  maxlength="15" required>
                    
                    <label class="text-label-1">Dirección domicilio:</label>
                    <input id="direc_usuario" class="form_dato-1" type="text" name="txt_direccion_mascota" placeholder="&#127969; Número aquí" maxlength="50" required>
                    
                    <label class="text-label-1">Raza:</label>
                    <input id="direc_usuario" class="form_dato-1" type="text" name="txt_Raza_mascota" placeholder="&#128021; Texto aquí" maxlength="50" required>

                    <label class="text-label-1">Edad:</label>
                    <input id="nombre_usuario" class="form_dato-1" type="text" name="txt_edad_mascota" placeholder="&#127874; Número aquí"  maxlength="3">

                    <label class="text-area-1">¿Alguna observación o sugerencia?</label>
                    <textarea id="observa_usuario" class="form_mensaje-1" name="message" placeholder="&#128232; Texto aquí" maxlength="250"></textarea>

                    <div id="botones-box-1" action="Controlador" >
                        <button id="adoptar_mascota" class="botones-1" type="submit" type="submit" onclick="sonido.play()" href="adoptar.jsp" name="accion" value="Agregar2">Registrar Mascota</button>
                    </div>
                </form>
            </section>
            
            <!--todo || Video || --> 
            <section id="video-box1">
                <video id="video-1" src="IMG/gato.mp4"  autoplay="true" muted="true" loop="true" alt="video de un gato negro"></video>
            </section>
        </main>

        <!--todo || Pie de página || --> 
        <footer class="rodapie1">
            <img src="IMG/logo.png" class="rodapie-img1" alt="logo de Rescatando Patitas">
            <p class="rodapie-texto1">Universidad Tecnológica de Pereira</p>
            <p class="rodapie-texto1">&copy; Copyright - 2022</p>
        </footer>
    </body>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="JS/animaciones.js"></script>
</html>