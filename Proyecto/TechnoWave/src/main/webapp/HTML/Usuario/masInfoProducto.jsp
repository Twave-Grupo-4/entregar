<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Información del producto</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="../img/logo-sin-fondo.png" type="png" sizes= "16px">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta+twbs4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <!------------------------------------------------------------------------------------------------------------------------------>
        <!--CSS-->
        <link rel="stylesheet" href=".../../CSS/dropdown-carrito-usuario.css"><!-- CSS del carrito y usuario -->
        <link rel="stylesheet" href="../../CSS/nav-footer.css"> <!--CSS del nav y footer-->
        <link rel="stylesheet" href="../../CSS/desgin.css" type="text/css"/>
          <!-- Swiper CSS -->
        <link rel="stylesheet" href="../../CSS/unpkg.com_swiper@8.4.7_swiper-bundle.min.css">
        <!------------------------------------------------------------------------------------------------------------------------------>

      <!--Fuente montserrat-->
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">

    </head>

    <body>

     <nav class="Menu_principal"><!-- Inicio del Menu de Arriba-->
       <nav class="Menu_principal_cajas">
        <div class="logo"> <a href="#"> <img src="https://images.freeimages.com/uploads/11086355/2ce7daba-8b20-4aeb-98e3-b28d2db04fbf.png" alt="logo" height="140px" width="240px" style="margin-top: 10px;"></a> </div>
        <!--esta parte es la del buscador en si-->
        <div class="Caja_contenedora" style="margin-right: 200px;">
         <div class="Caja_busqueda">
          <input type="text" placeholder="Busqueda...">
          <label for="" class="icon">
            <i class="fa-solid fa-magnifying-glass"></i>
          </label>  
         </div>  
        </div>
          <!--Fin del buscador-->
        
          <div class="btn-carrito">
            <label for="btn-carrito2" class="icon-carrito"><i class="fa-solid fa-cart-shopping"></i></label>
          </div>
          
          <div class="btn-usuario">
            <label for="btn-usuario" class="icon-usuario"><i class="fa-solid fa-user"></i></label>
          </div>
       
      </nav>

      <!--Dropdown del carrito de compra-->
     <input type="checkbox" id="btn-carrito2">

     <div class="carrito-container">
        <div class="carrito-cont">
          <nav>
            <div class="text-center" style="margin-bottom: 20px;">
              <i class="fa-solid fa-cart-shopping" id="logo-carrito"></i>
            </div>

            <h3 style="color: #0EAC8C; font-size: 20px; text-align: center; margin-bottom: 20px;"><i><b>Carrito</b></i></h3>
            <p class="total-articulos"><i>Tienes 3 articulos</i></p>

            <div class="borrar-comprar">
              <a class="boton-comprar-borrar" style="color: #0EAC8C;" href="#"><i>Comprar todo</i></a>
              <a class="boton-comprar-borrar" style="color: red;" href="#"><i>Borrar todo</i></a>
            </div>

            <h2 class="total-precio">TOTAL: <span>$594.997</span></h2>

            <!--Divs de los productos-->
            <div class="producto-lista">
              <img class="producto-img" src="https://images.freeimages.com/uploads/11086355/452d1832-e1a2-4edf-bcaa-78e6b21839c5.png" alt="img" width="120px" height="70px">
              <h3 class="nom_producto">Laptop Asus 45x</h3>
              <p class="precio-producto">$174.999</p>

              <div class="suma-resta-productos">
                <i class="fa-solid fa-minus"></i>
                <p style="font-size: 20px; color: #fff;">1</p>
                <i class="fa-solid fa-plus"></i>
              </div>

              <i class="fa fa-trash" id="tacho-basura" aria-hidden="true"></i>
            </div>

            <div class="producto-lista">
              <img class="producto-img" src="https://images.freeimages.com/uploads/11086355/452d1832-e1a2-4edf-bcaa-78e6b21839c5.png" alt="img" width="120px" height="70px">
              <h3 class="nom_producto">Laptop Asus 45x</h3>
              <p class="precio-producto">$174.999</p>

              <div class="suma-resta-productos">
                <i class="fa-solid fa-minus"></i>
                <p style="font-size: 20px; color: #fff;">1</p>
                <i class="fa-solid fa-plus"></i>
              </div>

              <i class="fa fa-trash" id="tacho-basura" aria-hidden="true"></i>
            </div>

            <div class="producto-lista">
              <img class="producto-img" src="https://images.freeimages.com/uploads/11086355/452d1832-e1a2-4edf-bcaa-78e6b21839c5.png" alt="img" width="120px" height="70px">
              <h3 class="nom_producto">Laptop Asus 45x</h3>
              <p class="precio-producto">$174.999</p>

              <div class="suma-resta-productos">
                <i class="fa-solid fa-minus"></i>
                <p style="font-size: 20px; color: #fff;">1</p>
                <i class="fa-solid fa-plus"></i>
              </div>

              <i class="fa fa-trash" id="tacho-basura" aria-hidden="true"></i>
            </div>

          </nav>

          <label for="btn-carrito2"><i class="fa-solid fa-x"></i></label>
        </div>
     </div> <!--Fin del listado del carrito-->

     <label class="click-fondo2" for="btn-carrito2"></label>

     <!--Listado de usuario-->
    <input type="checkbox" id="btn-usuario">

    <div for="btn-usuario" class="contenedor-usuario">
      <div class="cont-usuario">
        <nav>
          <div class="text-center" style="margin-bottom: 20px;">
            <i class="fa-solid fa-user" id="logo-usuario"></i>
          </div>

          <h3><i><b>Usuario</b></i></h3>

          <a href="#">Configuración</a>
          <a href="#">Cerrar sesión</a>
        </nav>

        <label for="btn-usuario"><i class="fa-solid fa-x"></i></label>
      </div>
    </div>

    <label class="click-fondo" for="btn-usuario"></label>

  </nav><!-- Fin del Menu de arriba -->
 
  <nav class="Articulos"><!-- Inicio del menu de compras-->
<nav class="Articulos_aux">
<div> <a href="#"> <i class="fa-solid fa-fan"></i> <p class="texto"> Ventiladores </p> </a> </div>
<div> <a href="#"> <i class="fa-solid fa-headphones"></i> <p class="texto"> Auriculares </p> </a> </div>
<div> <a href="#"> <i class="fa-solid fa-print"></i> <p class="texto"> Impresora</p> </a> </div>
<div> <a href="#"> <i class="fa-solid fa-tv"></i> <p class="texto"> Televisores</p> </a></div>
<div> <a href="#"> <i class="fa-solid fa-blender"></i> <p class="texto"> Licuadoras </p> </a> </div>
<div> <a href="#"> <i class="fa-solid fa-computer"></i> <p class="texto"> Computadoras </p> </a></div>
</nav>
</nav><!-- fin del Menu de Arriba-->

     <!--Inicio contenedor principal-->
    <div class="main-container1">

      <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="grid-column: 1/2;">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="https://images.freeimages.com/uploads/11086355/7295ad9c-2af7-4db5-bfca-22a05aa7faed.png" class="d-block w-100" alt="..." width="400px" height="400px">
          </div>  
          <div class="carousel-item">
            <img src="https://images.freeimages.com/uploads/11086355/6615bcad-5dbd-42fa-9a9d-1a4008d6c7c4.png" class="d-block w-100" alt="..." width="400px" height="400px">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>

      <div class="text_info" style="grid-column: 2/2;">

        <h2><b>Aire acondicionado Daikin FTXN split inverter frío/calor 2201 frigorías blanco</b></h2>

        <!-- <div class="star-widget">
          <input type="radio" name="rate" id="rate-1">
          <label for="rate-1" class="fas fa-star"></label>
          <input type="radio" name="rate" id="rate-2">
          <label for="rate-2" class="fas fa-star"></label>
          <input type="radio" name="rate" id="rate-3">
          <label for="rate-3" class="fas fa-star"></label>
          <input type="radio" name="rate" id="rate-4">
          <label for="rate-4" class="fas fa-star"></label>
          <input type="radio" name="rate" id="rate-5">
          <label for="rate-5" class="fas fa-star"></label>
        </div> -->

        <p class="precio"><b>$399.999</b></p>

        <input type="checkbox" id="btn-añadir-carro">

        <label id="añadir" for="btn-añadir-carro">AÑADIR AL CARRO</label>
        <label id="quitar" for="btn-añadir-carro">QUITAR DEL CARRO</label>

        <p class="cuotas">Hasta 12 cuotas sin interés</p>

        <div class="cont-tarjetas" style="display: flex; justify-content: center;">
          <img src="../img/visa.png" alt="visa" class="tarjetas">
          <img src="../img/mastercard.png" alt="mastercard" class="tarjetas">
          <img src="../img/cabal.png" alt="cabal" class="tarjetas">
          <img src="../img/naranja.png" alt="naranja" class="tarjetas">
        </div>
      </div>
    
      <div class="caracteristicas" style="grid-row: 2/3;">
        <h2 class="subtitulo">Características</h2>

        <ul class="col1">
          <li>Capacidad de refrigeración de 2560W.</li>
          <li>Capacidad de calefacción de 2840 W.</li>
          <li>Frigorías: 2201.</li>
          <li>Posee tecnología inverter.</li>
          <li>Eficiencia energética: A.</li>
          <li>Cuenta con función de dormir.</li>
          <li>Incluye control remoto.</li>
          <li>Dimensiones de la unidad externa: 65.8cm de ancho x 55cm de alto x 28.9cm de profundidad.</li>
          <li>Dimensiones de la unidad interna: 80cm de ancho x 28.8cm de alto x 21.2cm de profundidad.</li>
        </ul>

      </div>
    </div>

    <h2 class="subtitulo" style="margin-left: 10%;">Más productos similares</h2>

    <div class="slide-container swiper">
      <div class="slide-content slide_content_1">
          <div class="card-wrapper swiper-wrapper">
              <div class="card swiper-slide">
                <div class="image-contet">

                    <div class="card-image">
                        <img src="https://images.freeimages.com/uploads/11086355/b296ba79-ae95-415b-8436-aa9365708b5f.png" alt="" class="card-img">
                    </div>
                </div>

                <div class="card-content">
                    <h2 class="name">Aire acondicionado LG  split inverter frío/calor 3000 frigorías</h2>
                    <p class="description">$599.999</p>
                    <button class="button">MÁS INFORMACIÓN</button>
                </div>
            </div>

            <div class="card swiper-slide">
              <div class="image-contet">

                  <div class="card-image">
                      <img src="https://images.freeimages.com/uploads/11086355/b296ba79-ae95-415b-8436-aa9365708b5f.png" alt="" class="card-img">
                  </div>
              </div>

              <div class="card-content">
                  <h2 class="name">Aire acondicionado LG  split inverter frío/calor 3000 frigorías</h2>
                  <p class="description">$599.999</p>
                  <button class="button">MÁS INFORMACIÓN</button>
              </div>
          </div>

          <div class="card swiper-slide">
            <div class="image-contet">

                <div class="card-image">
                    <img src="https://images.freeimages.com/uploads/11086355/b296ba79-ae95-415b-8436-aa9365708b5f.png" alt="" class="card-img">
                </div>
            </div>

            <div class="card-content">
                <h2 class="name">Aire acondicionado LG  split inverter frío/calor 3000 frigorías</h2>
                <p class="description">$599.999</p>
                <button class="button">MÁS INFORMACIÓN</button>
            </div>
        </div>

        <div class="card swiper-slide">
          <div class="image-contet">

              <div class="card-image">
                  <img src="https://images.freeimages.com/uploads/11086355/b296ba79-ae95-415b-8436-aa9365708b5f.png" alt="" class="card-img">
              </div>
          </div>

          <div class="card-content">
              <h2 class="name">Aire acondicionado LG  split inverter frío/calor 3000 frigorías</h2>
              <p class="description">$599.999</p>
              <button class="button">MÁS INFORMACIÓN</button>
          </div>
      </div>

        <div class="card swiper-slide">
          <div class="image-contet">

              <div class="card-image">
                  <img src="https://images.freeimages.com/uploads/11086355/b296ba79-ae95-415b-8436-aa9365708b5f.png" alt="" class="card-img">
              </div>
          </div>

          <div class="card-content">
              <h2 class="name">Aire acondicionado LG  split inverter frío/calor 3000 frigorías</h2>
              <p class="description">$599.999</p>
              <button class="button">MÁS INFORMACIÓN</button>
          </div>
      </div>

      <div class="card swiper-slide">
        <div class="image-contet">

            <div class="card-image">
                <img src="https://images.freeimages.com/uploads/11086355/b296ba79-ae95-415b-8436-aa9365708b5f.png" alt="" class="card-img">
            </div>
        </div>

        <div class="card-content">
            <h2 class="name">Aire acondicionado LG  split inverter frío/calor 3000 frigorías</h2>
            <p class="description">$599.999</p>
            <button class="button">MÁS INFORMACIÓN</button>
        </div>
    </div>

    <div class="card swiper-slide">
      <div class="image-contet">

          <div class="card-image">
              <img src="https://images.freeimages.com/uploads/11086355/b296ba79-ae95-415b-8436-aa9365708b5f.png" alt="" class="card-img">
          </div>
      </div>

      <div class="card-content">
          <h2 class="name">Aire acondicionado LG  split inverter frío/calor 3000 frigorías</h2>
          <p class="description">$599.999</p>
          <button class="button">MÁS INFORMACIÓN</button>
      </div>
    </div>

    <div class="card swiper-slide">
      <div class="image-contet">

          <div class="card-image">
              <img src="https://images.freeimages.com/uploads/11086355/b296ba79-ae95-415b-8436-aa9365708b5f.png" alt="" class="card-img">
          </div>
      </div>

      <div class="card-content">
          <h2 class="name">Aire acondicionado LG  split inverter frío/calor 3000 frigorías</h2>
          <p class="description">$599.999</p>
          <button class="button">MÁS INFORMACIÓN</button>
      </div>
    </div>

    <div class="card swiper-slide">
      <div class="image-contet">

          <div class="card-image">
              <img src="https://images.freeimages.com/uploads/11086355/b296ba79-ae95-415b-8436-aa9365708b5f.png" alt="" class="card-img">
          </div>
      </div>

      <div class="card-content">
          <h2 class="name">Aire acondicionado LG  split inverter frío/calor 3000 frigorías</h2>
          <p class="description">$599.999</p>
          <button class="button">MÁS INFORMACIÓN</button>
      </div>
    </div>

          </div>
      </div>

      <div class="swiper-button-next carrusel-1-boton-prev"></div>
      <div class="swiper-button-prev carrusel-1-boton-next"></div>
  </div>

<!-- Swiper JS -->
<script src="../java/unpkg.com_swiper@8.4.7_swiper-bundle.min.js"></script>
<!-- JavaScript -->
<script src="../java/carrusel.js"></script>

     <!--Inicio de footer-->
     <div class="pie_pagina">
      <div class="iconos"> 
        <div> <a href="#"> <i class="fa-brands fa-instagram"></i></a> </div>
        <div> <a href="#"> <i class="fa-brands fa-square-facebook"></i> </a> </div>
        <div> <a href="#"> <i class="fa-brands fa-square-twitter"></i> </a> </div> 
      </div>
      <div class="info_pie">
       <div> <a href="#">Mas Informacion</a> </div>
       <div> <a href="#">Herramientas y Api</a> </div>
       <div> <a href="#">Asistencia</a> </div>
       <div> <a href="#">Empresa</a> </div>
      </div>
     </div>
     <!--finde footer-->

    </body>
</html>