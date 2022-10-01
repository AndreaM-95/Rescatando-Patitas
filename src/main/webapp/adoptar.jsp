<%-- 
    Document   : adoptar.jsp
    Created on : 20 sept 2022, 19:28:43
    Author     : Z
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>window.history.replaceState({}, document.title, "/" + "adoptar.jsp");</script>

        <title>Rescatando Patitas</title>

        <link rel="stylesheet" href="css/reset.css">
        <link rel="icon" type="image/jpg" href="IMG/favicon.ico"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pacifico|Roboto:100,300,400,500,700,900" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">


        <link rel="stylesheet" href="CSS/General/cuerpo-general.css">
        <link rel="stylesheet" href="CSS/Adoptar/adoptar.css">
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
            <div class="banner__imagen"><img src="IMG/banner.png" class="banner"></div>
            <h2 class="banner__titulo">Rescatando patitas</h2>
            </img>
        </section>

        <!--todo || Formulario de adopción || -->   
        <main id="main-box2">
            <section id="formulario-2">
                <p class="texto-1">Querido usuario, completa el siguiente formulario y nos comunicaremos contigo lo antes posible para continuar el proceso de adopción de tu próxima mascota.</br></p>
                <p class="texto-2">&#128150; ¡¡Gracias por elegir adoptar!! &#128062;</p>

                <form class="form-box-2" action="ControlUser">
                    <label class="text-label-2">Documento de identidad:</label>
                    <input id="ident_usuario" class="form_dato-2" type="text" name="txt_identificacion_usuario" placeholder="&#128179; Número aquí" maxlength="10" required>

                    <label class="text-label-2">Nombre Completo:</label>
                    <input id="nombre_usuario" class="form_dato-2" type="text" name="txt_nombre_usuario" placeholder="&#128100; Texto aquí" required>

                    <label class="text-label-2">Número telefónico:</label>
                    <input id="tel_usuario" class="form_dato-2" type="text" name="txt_telefono_usuario" placeholder="&#128222; Número aquí" maxlength="10" required>

                    <label class="text-label-2">Dirección domicilio:</label>
                    <input id="direc_usuario" class="form_dato-2" type="text" name="txt_direccion_usuario" placeholder="&#127969; Número aquí" maxlength="50" required>

                    <label class="text-label-2">Nombre de mascota:</label>
                    <input id="nombre_mascota" class="form_dato-2" type="text" name="txt_mascota_usuario" placeholder="&#128062; Texto aquí" maxlength="20" required>

                    <label class="text-label-3">Número de referencia de la mascota a adoptar:</label>
                    <input id="ref_mascota" class="form_dato-3" type="text" name="txt_mascota_referencia_usuario" placeholder="&#128062; Texto aquí"  maxlength="20" required>

                    <label class="text-label-4">¿Alguna observación o sugerencia?</label>
                    <textarea id="observa_usuario" class="form_mensaje-2" name="message" placeholder="&#128232; Texto aquí" maxlength="250"></textarea>

                    <div id="botones-box-2" action="ControlUser">
                        <button id="adoptar_mascota" class="botones-2" type="submit"   onclick="sonido.play()" name="accion2" value="Agregar2">Adoptar Mascota</button>                     
                    </div>
                </form>
            </section>

            <!--todo || Video || --> 
            <section id="video-box-2">
                <video id="video-2" src="IMG/llevame a casa.mp4"  autoplay="true" muted="true" loop="true" alt="video de un perro con letrero -Llevame a casa-"></video>
            </section>
        </main>

        <!--todo || Rodapie || --> 
        <footer class="rodapie1">
            <img src="IMG/logo.png" class="rodapie-img1" alt="logo de Rescatando Patitas">
            <p class="rodapie-texto1">Universidad Tecnológica de Pereira</p>
            <p class="rodapie-texto1">&copy; Copyright - 2022</p>
        </footer>
        <script src="js/sweetalert2.min.js"></script>
        <script src="JS/animaciones.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>