<%-- 
    Document   : index
    Created on : Aug 19, 2023, 2:20:52 PM
    Author     : saust
--%>

<%@page import="conexion.Conexion"%>
<%@page import="java.sql.*"%>
<%@page import="Servelets.Usuarios"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-3">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Techno Wave</title>

        <!-- CSS -->
        <link href="CSS/Main-page.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/general.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/cuentas.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/design-form.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/nav-footer.css" rel="stylesheet" >
        <link href="CSS/dropdown-carrito-usuarios.css" rel="stylesheet">
        <link href="CSS/unpkg.com_swiper@8.4.7_swiper-bundle.min" rel="stylesheet">

        <!-- BOOTSTRAP -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

        <!-- otras cosas -->        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta+twbs4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
        <script src="java/javaprueba.js"></script>        
    </head>

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

        <!--<div class="container">
            <nav class="navbar">
                <form class="form-inline" action="HTML/Usuario/logoutUsuario.jsp">
                    <a href="HTML/Usuario/datosUsuario.jsp"></a>
                    <button class="btn btn-outline-danger my-2 my-sm-0 ml-2" type="submit">Cerrar Sesión</button>
                </form>
            </nav>
        </div>-->

        <nav class="Menu_principal"><!-- Inicio del Menu de Arriba-->
            <nav class="Menu_principal_cajas">
                <div class="logo">
                    <a href="#">
                        <img class="foto_logo_twave" src="Imagenes/negro_t-wave.png" alt="logo">
                    </a> 
                </div>
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
                    <label for="btn-carrito2" class="icon-carrito"><img class="img-navbar" src="Imagenes/carrito.png" alt="alt"/></label>
                </div>

                <div class="btn-usuario">
                    <div style="display: flex; justify-content: center;">
                        <b style=" font-size: 16px; color: #0EAC8C; text-align: center; align-self: center;"><%=sesion.getAttribute("usuario")%></b>
                        <label for="" class="icon-usuario"><a class="texto-normal" href="HTML/Usuario/datosUsuario.jsp"><img class="img-navbar user" src="Imagenes/user.png" alt="alt"/></a></label>                        
                    </div>                    
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

                        <h3 style="color: #0EAC8C; font-size: 30px; text-align: center; margin-bottom: 20px;"><i><b>Carrito</b></i></h3>
                        <p style="margin-bottom: 65px;"><i>Tienes 3 articulos</i></p>

                        <div class="borrar-comprar">
                            <a class="boton-comprar-borrar" style="color: lime;" href="#"><i>Comprar todo</i></a>
                            <a class="boton-comprar-borrar" style="color: red;" href="#"><i>Borrar todo</i></a>
                        </div>

                        <!--Divs de los productos-->
                        <div class="producto-lista">
                            <img class="producto-img" src="https://images.freeimages.com/uploads/11086355/452d1832-e1a2-4edf-bcaa-78e6b21839c5.png" alt="img" width="150px" height="100px">
                            <h3 class="nom_producto">Laptop Asus 45x</h3>
                            <p class="precio-producto">$174.999</p>

                            <div class="suma-resta-productos">
                                <i class="fa-solid fa-minus"></i>
                                <p style="font-size: 20px; color: #fff;">1</p>
                                <i class="fa-solid fa-plus"></i>
                            </div>

                            <i class="fa fa-trash" id="tacho-basura" aria-hidden="true"></i>

                            <a class="link-comprar" href="#">COMPRAR</a>
                        </div>

                        <div class="producto-lista">
                            <img class="producto-img" src="https://images.freeimages.com/uploads/11086355/452d1832-e1a2-4edf-bcaa-78e6b21839c5.png" alt="img" width="150px" height="100px">
                            <h3 class="nom_producto">Laptop Asus 45x</h3>
                            <p class="precio-producto">$174.999</p>

                            <div class="suma-resta-productos">
                                <i class="fa-solid fa-minus"></i>
                                <p style="font-size: 20px; color: #fff;">1</p>
                                <i class="fa-solid fa-plus"></i>
                            </div>

                            <i class="fa fa-trash" id="tacho-basura" aria-hidden="true"></i>

                            <a class="link-comprar" href="#">COMPRAR</a>
                        </div>

                        <div class="producto-lista">
                            <img class="producto-img" src="https://images.freeimages.com/uploads/11086355/452d1832-e1a2-4edf-bcaa-78e6b21839c5.png" alt="img" width="150px" height="100px">
                            <h3 class="nom_producto">Laptop Asus 45x</h3>
                            <p class="precio-producto">$174.999</p>

                            <div class="suma-resta-productos">
                                <i class="fa-solid fa-minus"></i>
                                <p style="font-size: 20px; color: #fff;">1</p>
                                <i class="fa-solid fa-plus"></i>
                            </div>

                            <i class="fa fa-trash" id="tacho-basura" aria-hidden="true"></i>

                            <a class="link-comprar" href="#">COMPRAR</a>
                        </div>

                    </nav>

                    <label for="btn-carrito2"><i class="fa-solid fa-x"></i></label>
                </div>
            </div> <!--Fin del listado del carrito-->
        </nav><!-- Fin del Menu de navegación completo -->    


        <nav class="Articulos"><!-- Inicio del menu de compras-->
            <nav class="Articulos_aux">
                <div> <a href="HTML/Usuario/productos.jsp"> <i class="fa-solid fa-fan"></i> <p class="texto"> Ventiladores </p> </a> </div>
                <div> <a href="HTML/Usuario/productos.jsp"> <i class="fa-solid fa-soap"></i> <p class="texto"> Hogar</p> </a> </div>
                <div> <a href="HTML/Usuario/productos.jsp"> <i class="fa-solid fa-print"></i> <p class="texto"> Impresoras</p> </a> </div>
                <div> <a href="HTML/Usuario/productos.jsp"> <i class="fa-solid fa-tv"></i> <p class="texto"> Televisores</p> </a></div>
                <div> <a href="HTML/Usuario/productos.jsp"> <i class="fa-solid fa-kitchen-set"></i> <p class="texto"> Heladeras </p> </a> </div>
                <div> <a href="HTML/Usuario/productos.jsp"> <i class="fa-solid fa-computer"></i> <p class="texto"> Computadoras </p> </a></div> 
            </nav>
        </nav><!-- Fin del Menu de Arriba-->


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






        <!--Inicio de carrousel de proporciones insanas 2-->
        <div class="Separador"> </div>
        <div class="Contenedor_Inferno"> 
            <div class="Carousel_Carouselv2">
                <p> Notebook:40% <a class="Especial1">OFF</a> <a class="Especial2" href="#">Ver Todo</a> </p>
                <!--Inicio de carousel insaso 2-->
                <section class="productos_Carouselv2">
                    <div class="container-fluid-nha"><!-- este de caca tiene bootsrap si lo sacas capaz es mejor -->
                        <div class="slider-wrap_Carouselv2">
                            <div class="slider-main_Carouselv2" id="slider-main">

                                <div class="item_Carouselv2">
                                    <div class="texto_Carouselv2">
                                        <img src="https://www.fullh4rd.com.ar/img/productos/31/celular-samsung-galaxy-a23-4gb128gb-black-0.jpg" class="carousel-imagen_Carouselv2">
                                        <p>Celular Smarthphone Samsung Galaxy A23 4gb 128gb 50mpx Azul </p>
                                    </div>
                                </div>
                                <div class="item_Carouselv2">
                                    <div class="texto_Carouselv2">
                                        <img src="https://http2.mlstatic.com/D_NQ_NP_933648-MLA53352642912_012023-O.webp" class="carousel-imagen_Carouselv2">
                                        <p>Celular Samsung Galaxy A04E 32GB ROM + 32 GB RAM Negro SM-042MZAARO </p>
                                    </div>
                                </div>
                                <div class="item_Carouselv2">
                                    <div class="texto_Carouselv2">
                                        <img src="https://http2.mlstatic.com/D_NQ_NP_938816-MLA53586429002_022023-O.webp" class="carousel-imagen_Carouselv2">
                                        <p>Tablet enova 8" WIFI 2/32 GB Android 12 Negro </p>
                                    </div>
                                </div>
                                <div class="item_Carouselv2">
                                    <div class="texto_Carouselv2">
                                        <img src="https://http2.mlstatic.com/D_NQ_NP_965291-MLU69482630814_052023-O.webp" class="carousel-imagen_Carouselv2">
                                        <p>Motorola Edge 30 128 Gb Plata Opalo 8Gb Ram </p>
                                    </div>
                                </div><div class="item_Carouselv2">
                                    <div class="texto_Carouselv2">
                                        <img src="https://garbarinoar.vtexassets.com/arquivos/ids/215204-800-auto?v=638206608528170000&width=800&height=auto&aspect=true" class="carousel-imagen_Carouselv2">
                                        <p>CELULAR (HAWAII + OLET) MOTOROLA MOTO G42-XT2233-1-VERDE </p>
                                    </div>
                                </div><div class="item_Carouselv2">
                                    <div class="texto_Carouselv2">
                                        <img src="https://http2.mlstatic.com/D_NQ_NP_628410-MLA54073127628_022023-O.webp" class="carousel-imagen_Carouselv2">
                                        <p>Moto E22 32gb Ram Azul </p>
                                    </div>
                                </div>      

                            </div>

                            <div class="btn-area_Carouselv2">
                                <button type="button" class="slider-btn_Carouselv2" onclick="prev()"> <i class="fa-solid fa-chevron-left"></i> </button>

                            </div>
                            <div class="btn-area2_Carouselv2">

                                <button type="button_Carouselv2" class="slider-btn_Carouselv2" onclick="next()"> <i class="fa-solid fa-chevron-right"></i> </button>
                            </div>

                        </div>
                    </div> 
                </section>       
            </div>
            <!--  carousel 2 -->
            <p> Cellphones: 12 Cuotas<a class="Especial2" href="#">Ver Todo</a> </p>
            <!--Inicio de carousel insaso 2-->

            <div class="Carousel_Carouselv2_v2">

                <section class="productos_Carouselv2_v2">
                    <div class="container-fluid"><!-- este de caca tiene bootsrap si lo sacas capaz es mejor -->
                        <div class="slider-wrap_Carouselv2_v2">
                            <div class="slider-main_Carouselv2_v2" id="slider-main_v2">

                                <div class="item_Carouselv2_v2">
                                    <div class="texto_Carouselv2_v2">
                                        <img src="https://www.fullh4rd.com.ar/img/productos/31/celular-samsung-galaxy-a23-4gb128gb-black-0.jpg" class="carousel-imagen_Carouselv2_v2">
                                        <p>Celular Smarthphone Samsung Galaxy A23 4gb 128gb 50mpx Azul </p>
                                    </div>
                                </div>
                                <div class="item_Carouselv2_v2">
                                    <div class="texto_Carouselv2_v2">
                                        <img src="https://http2.mlstatic.com/D_NQ_NP_933648-MLA53352642912_012023-O.webp" class="carousel-imagen_Carouselv2_v2">
                                        <p>Celular Samsung Galaxy A04E 32GB ROM + 32 GB RAM Negro SM-042MZAARO </p>
                                    </div>
                                </div>
                                <div class="item_Carouselv2_v2">
                                    <div class="texto_Carouselv2_v2">
                                        <img src="https://http2.mlstatic.com/D_NQ_NP_938816-MLA53586429002_022023-O.webp" class="carousel-imagen_Carouselv2_v2">
                                        <p>Tablet enova 8" WIFI 2/32 GB Android 12 Negro </p>
                                    </div>
                                </div>
                                <div class="item_Carouselv2_v2">
                                    <div class="texto_Carouselv2_v2">
                                        <img src="https://http2.mlstatic.com/D_NQ_NP_965291-MLU69482630814_052023-O.webp" class="carousel-imagen_Carouselv2_v2">
                                        <p>Motorola Edge 30 128 Gb Plata Opalo 8Gb Ram </p>
                                    </div>
                                </div><div class="item_Carouselv2_v2">
                                    <div class="texto_Carouselv2_v2">
                                        <img src="https://garbarinoar.vtexassets.com/arquivos/ids/215204-800-auto?v=638206608528170000&width=800&height=auto&aspect=true" class="carousel-imagen_Carouselv2_v2">
                                        <p>CELULAR (HAWAII + OLET) MOTOROLA MOTO G42-XT2233-1-VERDE </p>
                                    </div>
                                </div><div class="item_Carouselv2_v2">
                                    <div class="texto_Carouselv2_v2">
                                        <img src="https://m.media-amazon.com/images/I/31MqREwPjtL._SX300_SY300_QL70_FMwebp_.jpg" class="carousel-imagen_Carouselv2_v2">
                                        <p>PNIQK Toy Mobile Phone ,Toy Cell Phone Barbie Mobile Phone Toy Best Gift Return for Kids </p>
                                    </div>
                                </div>      

                            </div>

                            <div class="btn-area_Carouselv2_v2">
                                <button type="button" class="slider-btn_Carouselv2_v2" onclick="prev_2()"> <i class="fa-solid fa-chevron-left"></i> </button>

                            </div>
                            <div class="btn-area2_Carouselv2_v2">

                                <button type="button_Carouselv2_v2" class="slider-btn_Carouselv2_v2" onclick="next_2()"> <i class="fa-solid fa-chevron-right"></i> </button>
                            </div>

                        </div>
                    </div> 
                </section>       
                <script>
                    var sliderMain = document.getElementById("slider-main_v2");
                    var item = sliderMain.getElementsByClassName("item_Carouselv2_v2");
                    function next_2() {
                        sliderMain.append(item[0]);
                    }
                    function prev_2() {
                        sliderMain.prepend(item[item.length - 1]);
                    }

                    var sliderMain1 = document.getElementById("slider-main");
                    var item1 = sliderMain1.getElementsByClassName("item_Carouselv2");
                    function next() {
                        sliderMain1.append(item1[0]);
                    }
                    function prev() {
                        sliderMain1.prepend(item1[item1.length - 1]);
                    }
                </script>
            </div>


            <!--fin de carousel insaso 2-->
        </div>
        <!--Fin del carousell de proporcion insana 2,lo unico que evita la locura son las canciones ia-->
        <!--Inicio de footer-->
        <div class="pie_pagina">
            <div class="iconos"> 
                <div> <a href="#"> <i class="fa-brands fa-instagram"></i> </a> </div>
                <div> <a href="#"> <i class="fa-brands fa-square-facebook"></i> </a> </div>
                <div> <a href="#"> <i class="fa-brands fa-square-twitter"></i> </a> </div> 
            </div>
            <div class="info_pie">
                <div> Mas Informacion </div>
                <div> Herramientas y Api </div>
                <div> Asistencia </div>
                <div> Empresa </div>
            </div>
        </div>
        <!--finde footer-->






        <!-- dejo la tabla en comentarios para reusarla con los productos
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Usuario</th>
                                <th scope="col">Mail</th>
                                <th scope="col">Teléfono</th>
                                <th scope="col">Contraseña</th>
                                <th scope="col">Configurción</th>
                            </tr>
                        </thead>
                        <tbody>

                            <%

                                //esto podria entrar dentro del SERVLET "USUARIOS"
                               /*try {
                                    Conexion conexion = new Conexion();
                                    conexion.conectar();
                                    ResultSet rs = conexion.registrosMostrar();
                                    while (rs.next()) {
                                        out.print("<tr>"
                                                + "<th scope=\"row\">" + rs.getString("id_usuario") + "</th>"
                                                + "<td>" + rs.getString("nombre") + "</td>"
                                                + "<td>" + rs.getString("mail") + "</td>"
                                                + "<td>" + rs.getString("telefono") + "</td>"
                                                + "<td>" + rs.getString("contrasenia") + "</td>"
                                                + "<td>"
                                                + "  <a href=\"HTML/Usuario/editarUsuario.jsp?id=" + rs.getString("id_usuario") + "&usuario=" + rs.getString("nombre") + "&mail=" + rs.getString("mail") + "&telefono=" + rs.getString("telefono") + "\">Editar</a>"
                                                + "  <a href=\"HTML/Usuario/borrarUsuario.jsp?id=" + rs.getString("id_usuario") + "\">Eliminar</a>"
                                                + "</td>"
                                                + "</tr>"
                                        );

                                    }
                                    rs.close();
                                } catch (Exception e) {
                                    out.print(e);
                                }
                                */
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>


        -->







    </body>
</html>
