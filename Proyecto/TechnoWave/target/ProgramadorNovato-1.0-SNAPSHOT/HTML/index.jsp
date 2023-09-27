<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/Other/html.html to edit this template
-->
<html>
    <head>

        <title>T-Wave - Menu principal</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta+twbs4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">


        <link href="../CSS/Main-page.css" rel="stylesheet" type="text/css"/>
        <!--Fuente montserrat-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="../CSS/dropdown-carrito-usuario.css">
        <link rel="stylesheet" href="../CSS/nav-footer.css">

        <link rel="icon" href="../img/logo-sin-fondo.png" type="png" sizes= "16px">

        <!-- Swiper CSS -->
        <link rel="stylesheet" href="../CSS/unpkg.com_swiper@8.4.7_swiper-bundle.min.css">

        <!-- CSS -->
        <link href="CSS/Main-page.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/general.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/cuentas.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/design-form.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/nav-footer.css" rel="stylesheet" >
        <link href="CSS/dropdown-carrito-usuarios.css" rel="stylesheet">
        <link href="CSS/unpkg.com_swiper@8.4.7_swiper-bundle.min" rel="stylesheet">
    </head>




    <!--<head>

        <title>T-Wave - Menu principal</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="icon" href="../img/logo-sin-fondo.png" type="png" sizes= "16px">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta+twbs4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">

    
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">

      

      

      
        <link href="CSS/Main-page.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/general.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/cuentas.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/design-form.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/unpkg.com_swiper@8.4.7_swiper-bundle.min" rel="stylesheet" type="text/css"/>
        
        
        <link href="CSS/dropdown-carrito-usuario.css" rel="stylesheet">
        <link href="CSS/nav-footer.css" rel="stylesheet">
        <link href="CSS/unpkg.com_swiper@8.4.7_swiper-bundle.min.css" rel="stylesheet">
        <link href="CSS/Main-page.css" rel="stylesheet" type="text/css"/>
    </head>-->

    <body>
        <%
            HttpSession sesion = request.getSession();
            /*if (sesion.getAttribute("logueado") == null || sesion.getAttribute("logueado").equals("0")) {
                response.sendRedirect("HTML/Usuario/loginUsuario.jsp");
            }*/
            if (sesion.getAttribute("logueado") == null) {

                sesion.setAttribute("id", "");
                sesion.setAttribute("usuario", "");
                sesion.setAttribute("email", "");
                sesion.setAttribute("telefono", "");
            }
        %>


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

                <%
                    if (sesion.getAttribute("logueado") == null) {
                %>
                <div class="btn-usuario">
                    <div style="display: flex; justify-content: center;">
                        <b style=" font-size: 16px; color: #0EAC8C; text-align: center; align-self: center;"><%=sesion.getAttribute("usuario")%></b>
                        <label for="btn-usuario" class="icon-usuario"><a class="texto-normal" href="Usuario/datosUsuario.jsp"><i class="fa-solid fa-user"></i></a></label>
                    </div>                    
                </div>
                <%
                } else {
                %>

                <div class="btn-usuario">
                    <div style="display: flex; justify-content: center;">
                        <b style=" font-size: 16px; color: #0EAC8C; text-align: center; align-self: center;"><%=sesion.getAttribute("usuario")%></b>
                        <label for="btn-usuario" class="icon-usuario"><i class="fa-solid fa-user"></i></label>
                    </div>                    
                </div>

                <%
                    }
                %>
                <!--<div class="btn-usuario">
                    <label for="btn-usuario" class="icon-usuario"><i class="fa-solid fa-user"></i></label>
                </div>-->




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

                        <a href="Usuario/NEWdatosUsuario.jsp">Configuración</a>
                        <a href="/ProgramadorNovato/SvCerrarSesion">Cerrar sesión</a>
                    </nav>

                    <label for="btn-usuario"><i class="fa-solid fa-x"></i></label>
                </div>
            </div>

            <label class="click-fondo" for="btn-usuario"></label>


        </nav><!-- Fin del Menu de arriba -->

        <nav class="Articulos"><!-- Inicio del menu de compras-->
            <nav class="Articulos_aux">
                <div> <a href="Usuario/productos.jsp?aires=1"><i class="fa-solid fa-fan"></i> <p class="texto"> Ventiladores </p> </a> </div>
                <div> <a href="Usuario/productos.jsp?auriculares=1"><i class="fa-solid fa-headphones"></i> <p class="texto"> Auriculares </p> </a> </div>
                <div> <a href="Usuario/productos.jsp?impresoras=1"><i class="fa-solid fa-print"></i> <p class="texto"> Impresoras</p> </a> </div>
                <div> <a href="Usuario/productos.jsp?televisores=1"><i class="fa-solid fa-tv"></i> <p class="texto"> Televisores</p> </a></div>
                <div> <a href="Usuario/productos.jsp?licuadoras=1"><i class="fa-solid fa-blender"></i> <p class="texto"> Licuadoras </p> </a> </div>
                <div> <a href="Usuario/productos.jsp?computadoras=1"><i class="fa-solid fa-computer"></i> <p class="texto"> Computadoras </p> </a></div>
            </nav>
        </nav><!-- fin del Menu de Arriba-->



        <!-- Aqui empieza la parte del resto de los articulos en si -->
        <div class="Separador"> </div>

        <!-- Espacio de carousel-->
        <div class="contenedor_medio">
            <div class="contenedor_1">
                OFERTAS
            </div>
            <div class="contenedor_2">
                <div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false">
                    <div class="carousel-inner">

                        <div class="carousel-item active">
                            <a href="#"> <img src="https://img.pccomponentes.com/pcblog/5850/consumo-electrodomesticos-1.jpg" class="d-block w-100" alt="imagen1"> </a>
                        </div>
                        <div class="carousel-item">
                            <a href="#"> <img src="https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/media/image/2020/12/11-mitos-electrodomesticos-hora-dejes-creerte-2157733.jpg?tf=3840x" class="d-block w-100" alt="imagen2"> </a>
                        </div>
                        <div class="carousel-item">
                            <a href="#"> </a><img src="https://us.123rf.com/450wm/serezniy/serezniy2103/serezniy210385374/166462731-diferentes-electrodomésticos-en-la-mesa.jpg?ver=6" class="d-block w-100" alt="imagen3"> </a>
                        </div>

                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
        <!--Fin de espacio carousell-->

        <!--Inicio de carrousel de proporciones insanas-->

        <!--fin de carousel insaso 2-->
    </div>
    <!--Fin del carousell de proporcion insana,lo unico que evita la locura son las canciones ia-->
    <!--Inicio de carrousel de proporciones insanas 2-->
    <div class="Separador"> </div>
    <div class="Contenedor_Inferno"> 
        <p class="nom_listado"> Notebooks 40% <a class="Especial1"> OFF </a> <a class="Especial2" href="#">Ver Todo</a> </p>

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

        <!--  carousel 2 -->
        <!--Inicio de carousel insaso 2-->

        <div class="Separador"> </div>
        <div class="Contenedor_Inferno">

            <p class="nom_listado"> Cellphones: 12 Cuotas <span class="sin-interes">SIN INTERES</span> <a class="Especial2" href="#">Ver Todo</a> </p>

            <div class="slide-container swiper">
                <div class="slide-content slide-content_2">
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

                    </div>
                </div>

                <div class="swiper-button-next carrusel-2-boton-next"></div>
                <div class="swiper-button-prev carrusel-2-boton-prev"></div>
            </div>
        </div>

    </div>

    <!--fin de carousel insaso 2-->
</div>

<!-- Swiper JS -->
<script src="../java/unpkg.com_swiper@8.4.7_swiper-bundle.min.js"></script>
<!-- JavaScript -->
<script src="../java/carrusel.js"></script>

<!--Fin del carousell de proporcion insana 2,lo unico que evita la locura son las canciones ia-->
<!--Inicio de footer-->
<div class="pie_pagina">
    <div class="iconos"> 
        <div> <a href="#"> <i class="fa-brands fa-instagram"></i> </a> </div>
        <div> <a href="#"> <i class="fa-brands fa-square-facebook"></i> </a> </div>
        <div> <a href="#"> <i class="fa-brands fa-square-twitter"></i> </a> </div> 
    </div>
    <div class="info_pie">
        <div> <a href="#">Mas Informacion </a></div>
        <div> <a href="#">Herramientas y Api</a></div>
        <div> <a href="#">Asistencia</a></div>
        <div> <a href="#">Empresa</a></div>
    </div>
</div>
<!--finde footer-->
</body>
</html>
