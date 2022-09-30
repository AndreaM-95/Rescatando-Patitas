<%-- 
    Document   : index.jsp
    Created on : 20 sept 2022, 19:24:47
    Author     : Z
--%>

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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.1/normalize.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/glider-js@1.7.3/glider.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <link rel="stylesheet" href="CSS/General/cuerpo-general.css">
        <link rel="stylesheet" href="CSS/Pagina-Principal/galeria_mascotas.css">
        <link rel="stylesheet" href="CSS/Pagina-Principal/pasarela.css">
        <link rel="stylesheet" href="CSS/Pagina-Principal/colaboradores.css">
        <link rel="stylesheet" href="CSS/Pagina-Principal/rodapie_pagPrincipal.css">
        <link rel="stylesheet" href="CSS/Pagina-Principal/boton_top.css">
        <link rel="stylesheet" href="CSS/responsive/pag-principal.css">
        <link rel="stylesheet" href="CSS/responsive/general-y-rodapies.css">
        
        <style>
            li{
                list-style: none;
            }
        </style>
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
        </section>

        <h1 class="titulo">&#128054; ¡¡ Bienvenidos !! &#128054;</br></br>Esta es la sección principal, sientete libre de conocer nuestros peluditos, pueda que uno de ellos te enamore.</h1>
        <hr></hr>

        <!--todo || Pasarela de imágenes || --> 
        <section class="carrusel">
            <div class="carrusel__contenedor">

                <button aria-label="Anterior" class="carrusel__anterior">
                    <i class="fas fa-chevron-left"></i>
                </button>

                <div class="carrusel__lista">
                    <div class="carrusel__elemento"><img class="slider_img" src="IMG/Instructivo.png" alt="Imágen instructivo de navegación"></div>
                    <div class="carrusel__elemento"><img class="slider_img" src="IMG/Adoptar.png" alt="Imágen instructivo para adoptar"></div>  
                    <div class="carrusel__elemento"><img class="slider_img" src="IMG/Registrar.png" alt="Imágen instructivo para dar en adopción"></div>
                    <div class="carrusel__elemento"><img class="slider_img" src="IMG/Salud.png" alt="Imágen información salud de peluditos"></div>
                </div>

                <button aria-label="Siguiente" class="carrusel__siguiente">
                    <i class="fas fa-chevron-right"></i>
                </button>
            </div>
            <div role="tablist" class="carrusel__indicador"></div>
        </section>

        <hr></hr>

        <!--todo || Galería de fotos de mascotas disponibles || --> 
        <h3 class="peludito-titulo">CONOCE A NUESTROS PELUDITOS</h3>
        <main id="galeria">
            <div id="mascota_box">
                <div class="img_mascota_box">
                    <img class="img_mascota" src="IMG/galeria/perro1.png">
                </div>
                <div class="info_mascota_box">
                    <h3 class="nombre_mascota">Luna</h3>
                    <ul class="texto_mascota1">
                        <li>Edad: 4 meses.</li>
                        <li>Tamaño: Medio.</li>
                        <li>Perrita Saludable.</li>
                    </ul>
                    <p class="texto_mascota2">Ref: #01</p>
                    <a class="a" href="adoptar.jsp">
                        <button class="botones">Adoptar</button>
                    </a> 
                </div>
            </div>

            <div id="mascota_box">
                <div class="img_mascota_box">
                    <img class="img_mascota" src="IMG/galeria/gato1.jpg">
                </div>
                <div class="info_mascota_box">
                    <h3 class="nombre_mascota">Rayo</h3>
                    <ul class="texto_mascota1">
                        <li>Edad:  1 año.</li>
                        <li>Tamaño: Medio.</li>
                        <li>Gatico saludable.</li>
                    </ul>
                    <p class="texto_mascota2">Ref: #02</p>
                    <a class="a" href="adoptar.jsp">
                        <button class="botones">Adoptar</button>
                    </a>
                </div>
            </div>

            <div id="mascota_box">
                <div class="img_mascota_box">
                    <img class="img_mascota" src="IMG/galeria/perro2.jpeg">
                </div>
                <div class="info_mascota_box">
                    <h3 class="nombre_mascota">Kyra</h3>
                    <ul class="texto_mascota1">
                        <li>Edad:  8 meses.</li>
                        <li>Tamaño: Medio.</li>
                        <li>Perrita Saludable.</li>
                    </ul>
                    <p class="texto_mascota2">Ref: #03</p>
                    <a class="a" href="adoptar.jsp">
                        <button class="botones">Adoptar</button>
                    </a> 
                </div>
            </div>

            <div id="mascota_box">
                <div class="img_mascota_box">
                    <img class="img_mascota" src="IMG/galeria/gato2.jpg">
                </div>
                <div class="info_mascota_box">
                    <h3 class="nombre_mascota">Estrella</h3>
                    <ul class="texto_mascota1">
                        <li>Edad:  2 meses.</li>
                        <li>Tamaño: Medio.</li>
                        <li>Gatica saludable.</li>
                    </ul>
                    <p class="texto_mascota2">Ref: #04</p>
                    <a class="a" href="adoptar.jsp">
                        <button class="botones">Adoptar</button>
                    </a> 
                </div>
            </div>

            <div id="mascota_box">
                <div class="img_mascota_box">
                    <img class="img_mascota" src="IMG/galeria/perro3.jpeg">
                </div>
                <div class="info_mascota_box">
                    <h3 class="nombre_mascota">Mateo</h3>
                    <ul class="texto_mascota1">
                        <li>Edad:  3 meses.</li>
                        <li>Tamaño: Medio.</li>
                        <li>Perrito saludable.</li>
                    </ul>
                    <p class="texto_mascota2">Ref: #05</p>
                    <a class="a" href="adoptar.jsp">
                        <button class="botones">Adoptar</button>
                    </a> 
                </div>
            </div>

            <!--TODO FILA 2-->
            <div id="mascota_box">
                <div class="img_mascota_box">
                    <img class="img_mascota" src="IMG/galeria/gato3.png">
                </div>
                <div class="info_mascota_box">
                    <h3 class="nombre_mascota">Cloe</h3>
                    <ul class="texto_mascota1">
                        <li>Edad: 3 años.</li>
                        <li>Tamaño: Medio.</li>
                        <li>Gatica Saludable.</li>
                    </ul>
                    <p class="texto_mascota2">Ref: #06</p>
                    <a class="a" href="adoptar.jsp">
                        <button class="botones">Adoptar</button>
                    </a> 
                </div>
            </div>

            <div id="mascota_box">
                <div class="img_mascota_box">
                    <img class="img_mascota" src="IMG/galeria/perro4.png">
                </div>
                <div class="info_mascota_box">
                    <h3 class="nombre_mascota">Cookie</h3>
                    <ul class="texto_mascota1">
                        <li>Edad:  2 meses.</li>
                        <li>Tamaño: Medio.</li>
                        <li>Perrito saludable.</li>
                    </ul>
                    <p class="texto_mascota2">Ref: #07</p>
                    <a class="a" href="adoptar.jsp">
                        <button class="botones">Adoptar</button>
                    </a>
                </div>
            </div>

            <div id="mascota_box">
                <div class="img_mascota_box">
                    <img class="img_mascota" src="IMG/galeria/gato4.png">
                </div>
                <div class="info_mascota_box">
                    <h3 class="nombre_mascota">Oreo</h3>
                    <ul class="texto_mascota1">
                        <li>Edad: 1 año.</li>
                        <li>Tamaño: Medio.</li>
                        <li>Gatico Saludable.</li>
                    </ul>
                    <p class="texto_mascota2">Ref: #08</p>
                    <a class="a" href="adoptar.jsp">
                        <button class="botones">Adoptar</button>
                    </a> 
                </div>
            </div>

            <div id="mascota_box">
                <div class="img_mascota_box">
                    <img class="img_mascota" src="IMG/galeria/perro5.png">
                </div>
                <div class="info_mascota_box">
                    <h3 class="nombre_mascota">Tony</h3>
                    <ul class="texto_mascota1">
                        <li>Edad: 8 años.</li>
                        <li>Tamaño: Grande.</li>
                        <li>Perrito mayor.</li>
                    </ul>
                    <p class="texto_mascota2">Ref: #09</p>
                    <a class="a" href="adoptar.jsp">
                        <button class="botones">Adoptar</button>
                    </a> 
                </div>
            </div>

            <div id="mascota_box">
                <div class="img_mascota_box">
                    <img class="img_mascota" src="IMG/galeria/gato5.png">
                </div>
                <div class="info_mascota_box">
                    <h3 class="nombre_mascota">Rita</h3>
                    <ul class="texto_mascota1">
                        <li>Edad:  1 año.</li>
                        <li>Tamaño: Medio.</li>
                        <li>Gatica saludable.</li>
                    </ul>
                    <p class="texto_mascota2">Ref: #10</p>
                    <a class="a" href="adoptar.jsp">
                        <button class="botones">Adoptar</button>
                    </a> 
                </div>
            </div>

            <!--TODO FILA 3-->

            <div id="mascota_box">
                <div class="img_mascota_box">
                    <img class="img_mascota" src="IMG/galeria/perro6.png">
                </div>
                <div class="info_mascota_box">
                    <h3 class="nombre_mascota">Negro</h3>
                    <ul class="texto_mascota1">
                        <li>Edad: 9 años.</li>
                        <li>Tamaño: Medio.</li>
                        <li>Perrito Saludable.</li>
                    </ul>
                    <p class="texto_mascota2">Ref: #11</p>
                    <a class="a" href="adoptar.jsp">
                        <button class="botones">Adoptar</button>
                    </a> 
                </div>
            </div>

            <div id="mascota_box">
                <div class="img_mascota_box">
                    <img class="img_mascota" src="IMG/galeria/gato6.png">
                </div>
                <div class="info_mascota_box">
                    <h3 class="nombre_mascota">Blue</h3>
                    <ul class="texto_mascota1">
                        <li>Edad:  2 meses.</li>
                        <li>Tamaño: Medio.</li>
                        <li>Gatica saludable.</li>
                    </ul>
                    <p class="texto_mascota2">Ref: #12</p>
                    <a class="a" href="adoptar.jsp">
                        <button class="botones">Adoptar</button>
                    </a>
                </div>
            </div>

            <div id="mascota_box">
                <div class="img_mascota_box">
                    <img class="img_mascota" src="IMG/galeria/perro7.png">
                </div>
                <div class="info_mascota_box">
                    <h3 class="nombre_mascota">Bruno</h3>
                    <ul class="texto_mascota1">
                        <li>Edad:  5 años.</li>
                        <li>Tamaño: Grande.</li>
                        <li>Perrito Saludable.</li>
                    </ul>
                    <p class="texto_mascota2">Ref: #13</p>
                    <a class="a" href="adoptar.jsp">
                        <button class="botones">Adoptar</button>
                    </a> 
                </div>
            </div>

            <div id="mascota_box">
                <div class="img_mascota_box">
                    <img class="img_mascota" src="IMG/galeria/gato7.png">
                </div>
                <div class="info_mascota_box">
                    <h3 class="nombre_mascota">Sol</h3>
                    <ul class="texto_mascota1">
                        <li>Edad:  2 meses.</li>
                        <li>Tamaño: Medio.</li>
                        <li>Gatica saludable.</li>
                    </ul>
                    <p class="texto_mascota2">Ref: #14</p>
                    <a class="a" href="adoptar.jsp">
                        <button class="botones">Adoptar</button>
                    </a> 
                </div>
            </div>

            <div id="mascota_box">
                <div class="img_mascota_box">
                    <img class="img_mascota" src="IMG/galeria/perro8.png">
                </div>
                <div class="info_mascota_box">
                    <h3 class="nombre_mascota">Agatha</h3>
                    <ul class="texto_mascota1">
                        <li>Edad:  3 meses.</li>
                        <li>Tamaño: Medio.</li>
                        <li>Perrita saludable.</li>
                    </ul>
                    <p class="texto_mascota2">Ref: #15</p>
                    <a class="a" href="adoptar.jsp">
                        <button class="botones">Adoptar</button>
                    </a> 
                </div>
            </div>
        </main>
        <hr></hr>

        <!--todo || Colaboradores - Creadores de la página || --> 
        <h3 class="colab-titulo">CONOCE A NUESTROS COLABORADORES</h3>
        <div class="colaboradores-box"> 
            <div class="colab-box">
                <img src="IMG/Foto_Cristian.jpeg" class="img_colab" alt="Foto Cristian">
                <legend class="colab-text1">Cristian Mina</legend>
                <legend class="colab-text2">Gestor del proyecto</legend>
            </div>

            <div class="colab-box">
                <img src="IMG/Foto_Angela.png" class="img_colab" alt="Foto Angela">
                <legend class="colab-text1">Ángela Benavides</legend>
                <legend class="colab-text2">Desarrolladora Backend</legend>
            </div>

            <div class="colab-box">
                <img src="IMG/Foto_Andrea.png" class="img_colab" alt="Foto Andrea">
                <legend class="colab-text1">Andrea Mejía</legend>
                <legend class="colab-text2">Desarrolladora Front End</legend>
            </div>
            
            <div class="colab-box">    
                <img src="IMG/Foto_Sebastian.jpg" class="img_colab" alt="Foto Sebastian">
                <legend class="colab-text1">Sebastian López</legend>
                <legend class="colab-text2">Tester</legend>  
            </div>
        </div>

        <!--todo || Pie de página || --> 
        <footer class="rodapie">

            <!--todo || Referencias de facebook || --> 
            <div class="sitios_box">
                    <p class="texto_sitios1">Puedes obtener más información de los peluditos disponibles en los sitios oficiales en facebook:</p>
                    <a class="link" href="https://www.facebook.com/Peluditos-con-Futuro-686338041428058/?ti=as"  target="_blank">
                        <i class="fa-brands fa-facebook"></i>
                    </a><p class="texto_sitios2">Peluditos con Futuro</p>

                    <a class="link" href="https://www.facebook.com/groups/1860657434063052/media"  target="_blank">
                        <i class="fa-brands fa-facebook"></i>
                    </a><p class="texto_sitios2">Adopción de Perros y Gatos en Bogotá</p>

                    <a class="link" href="https://www.facebook.com/groups/308761335823574"  target="_blank">
                        <i class="fa-brands fa-facebook"></i>
                    </a><p class="texto_sitios2">Adopcion Perros Y Gatos Bogota D.C.</p>
            </div>

            <!--todo || Derechos de autor || --> 
            <div class="derechos_box">
                <img src="IMG/logo.png"  class="rodapie-img" alt="logo de Rescatando Patitas">
                <p class="rodapie-texto">Universidad Tecnológica de Pereira</p>
                <p class="rodapie-texto">&copy; Copyright - 2022</p>
            </div>
        </footer>

        <!--todo || Botón de volver arriba || --> 
        <button class="btn-scrolltop " id="btn_scrolltop"  onclick="sonido.play()">
            <i class="fa-solid fa-circle-arrow-up"></i>
        </button>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/glider-js@1.7.3/glider.min.js"></script>
    <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="JS/animaciones.js"></script>
</html>