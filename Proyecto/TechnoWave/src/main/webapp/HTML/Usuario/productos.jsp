<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Conexion"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/Other/html.html to edit this template
-->
<html>

    <%
        HttpSession sesion = request.getSession();

        String ventiladores = request.getParameter("ventiladores");
        String auriculares = request.getParameter("auriculares");
        String impresoras = request.getParameter("impresoras");
        String televisores = request.getParameter("televisores");
        String licuadoras = request.getParameter("licuadoras");
        String computadoras = request.getParameter("computadoras");
        String aires = request.getParameter("aires");

        String tabla = "all";

        if (ventiladores != null) {
            tabla = "ventiladores";
        } else if (auriculares != null) {
            tabla = "auriculares";
        } else if (impresoras != null) {
            tabla = "impresoras";
        } else if (televisores != null) {
            tabla = "televisores";
        } else if (licuadoras != null) {
            tabla = "licuadoras";
        } else if (computadoras != null) {
            tabla = "computadoras";
        } else if (aires != null) {
            tabla = "aires";
        }
    %>


    <head>

        <title><%=tabla%> - Productos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="../img/logo-sin-fondo.png" type="png" sizes= "16px">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta+twbs4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">


        <!--CSS-->
        <link rel="stylesheet" href="../../CSS/dropdown-carrito-usuario.css">
        <link rel="stylesheet" href="../../CSS/nav-footer.css">
        <link rel="stylesheet" href="../../CSS/search-page.css" type="text/css"/>


        <!--Fuente montserrat-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">

    </head>
    <body>                        


        <nav class="Menu_principal"><!-- Inicio del Menu de Arriba-->
            <nav class="Menu_principal_cajas">
                <div class="logo"> <a href="../index.jsp"> <img src="https://images.freeimages.com/uploads/11086355/2ce7daba-8b20-4aeb-98e3-b28d2db04fbf.png" alt="logo" height="140px" width="240px" style="margin-top: 10px;"></a> </div>
                <!--esta parte es la del buscador en si-->
                <div class="Caja_contenedora">
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

    </nav><!-- Fin del Menu de arriba -->

    <nav class="Articulos"><!-- Inicio del menu de compras-->
        <nav class="Articulos_aux">
            <div> <a href="productos.jsp?aires=1"> <i class="fa-solid fa-fan"></i> <p class="texto"> Aires </p> </a> </div>
            <div> <a href="productos.jsp?auriculares=1"> <i class="fa-solid fa-headphones"></i> <p class="texto"> Auriculares </p> </a> </div>
            <div> <a href="productos.jsp?impresoras=1"> <i class="fa-solid fa-print"></i> <p class="texto"> Impresoras</p> </a> </div>
            <div> <a href="productos.jsp?televisores=1"> <i class="fa-solid fa-tv"></i> <p class="texto"> Televisores</p> </a></div>
            <div> <a href="productos.jsp?licuadoras=1"> <i class="fa-solid fa-blender"></i> <p class="texto"> Licuadoras </p> </a> </div>
            <div> <a href="productos.jsp?computadoras=1"> <i class="fa-solid fa-computer"></i> <p class="texto"> Computadoras </p> </a></div>
        </nav>
    </nav><!-- fin del Menu de Arriba-->

    <!-- Inicio de la parte de los filtros -->
    <div class="contenedor-principal">
        <div class="contenedor_filtros">
            <div class="busqueda-activo">
                <p class="especial1"> Filtros </p>
                <p class="especial2"> Filtrado por marcas </p>
                <button class="boton_bonito" type="button"> Borrar filtros <i class="fa-solid fa-xmark"></i> </button>
            </div>
            <div class="marca-disponibles">
                <P class="especial3 "> Marcas </P>
                <label class="categorias">Daikin
                    <input type="checkbox">
                    <span class="checkmark"></span>
                </label>
                <label class="categorias">Mitsubishi
                    <input type="checkbox">
                    <span class="checkmark"></span>
                </label>
                <label class="categorias">Panasonic
                    <input type="checkbox">
                    <span class="checkmark"></span>
                </label>
                <label class="categorias">Fujitsu
                    <input type="checkbox">
                    <span class="checkmark"></span>
                </label>
                <label class="categorias">LG
                    <input type="checkbox">
                    <span class="checkmark"></span>
                </label>
                <label class="categorias">Hisense
                    <input type="checkbox">
                    <span class="checkmark"></span>
                </label>
                <label class="categorias">Kosner
                    <input type="checkbox">
                    <span class="checkmark"></span>
                </label>
                <label class="categorias">Toshiba    
                    <input type="checkbox">
                    <span class="checkmark"></span>
                </label>
                <label class="categorias">Haier
                    <input type="checkbox">
                    <span class="checkmark"></span>
                </label>
                <label class="categorias">Baxi
                    <input type="checkbox">
                    <span class="checkmark"></span>
                </label>
            </div>
            <div class="rango-precios">
                <p class="especial3"> Precios </p>
                <div class="contenedor_precios">

                    <div class="precios_minimos">
                        <p> Mínimo: </p>
                        <input type="text" placeholder="">
                    </div>
                    <div class="precios_maximos">
                        <p> Máximo: </p>
                        <input type="text" placeholder="">
                    </div>

                </div>
            </div>
        </div>

        <div class="contenedor_articulos">


            <div class="container mt-5">
                <div class="row">
                    <div class="col-sm">
                        <%
                            int cont = 1;
                            //esto podria entrar dentro del SERVLET "USUARIOS"
                            try {
                                Conexion conexion = new Conexion();
                                conexion.conectar();
                                ResultSet rs = conexion.registrosMostrar("producto", "gama", tabla);
                                while (rs.next()) {
                                    //devolver valor de tupla:      rs.getString("id_usuario");
%>

                        <div class="articulo">
                            <a href="#">
                                <img src="<%=rs.getString("url_imagen")%>">
                                <p> <%=rs.getString("nombre")%> </p>
                                <h2>$<%=rs.getString("precio_venta")%></h2>
                                <div class="botones">
                                    <a href="masInfoProducto.jsp" class="gestionar">Más Información</a>
                                </div>
                            </a>
                        </div>

                        <%
                                    cont++;
                                }
                                rs.close();
                            } catch (Exception e) {
                                out.print(e);
                            }

                        %>

                    </div>
                </div>
            </div>




        </div>
    </div>
    <!-- Fin de contenedor de aires -->
    <!-- Inicio del pie de pagina -->
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
</body>
</html>
