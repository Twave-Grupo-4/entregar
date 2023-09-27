<%@page import="java.sql.*"%>
<%@page import="Utils.Encriptar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Cambio de datos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--Imagen-->
        <link rel="icon" href="../img/logo-sin-fondo.png" type="png" sizes= "16px">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta+twbs4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

        <!---------------------------------------------------------------------------------------------------------------------->
        <!--CSS-->
        <link rel="stylesheet" href="../../CSS/design-form.css"  type="text/css"/>
        <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
        <link rel="stylesheet" href="../../CSS/dropdown-carrito-usuario.css">
        <link rel="stylesheet" href="../../CSS/nav-footer.css">
        <!---------------------------------------------------------------------------------------------------------------------->

        <!--Fuente montserrat-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">

    </head>

    <body>

        <%
            Encriptar md5 = new Encriptar();

            HttpSession sesion = request.getSession();
            if (sesion.getAttribute("logueado") == null || sesion.getAttribute("logueado").equals("0")) {
                response.sendRedirect("loginUsuario.jsp");
            }
            Connection cx = null;
            Statement st = null;
            ResultSet rs = null;
        %>


        <nav class="Menu_principal"><!-- Inicio del Menu de Arriba-->
            <nav class="Menu_principal_cajas">
                <div class="logo"> <a href="#"> <img src="https://images.freeimages.com/uploads/11086355/2ce7daba-8b20-4aeb-98e3-b28d2db04fbf.png" alt="logo" height="140px" width="240px" style="margin-top: 10px;"></a> </div>
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
                    <div style="display: flex; justify-content: center;">
                        <b style=" font-size: 16px; color: #0EAC8C; text-align: center; align-self: center;"><%=sesion.getAttribute("usuario")%></b>
                        <label for="btn-usuario" class="icon-usuario"><i class="fa-solid fa-user"></i></label>
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

                        <a href="../index.jsp">Inicio</a>
                        <a href="/ProgramadorNovato/SvCerrarSesion">Cerrar sesión</a>
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

        <br><br>

        <h1><i><b>Configuración de usuario</b></i></h1>

        <div class="contenedor-principal">


            <form class="datos-usuario">
                <h3>Datos de contacto</h3>

                <p style="grid-column: 1; grid-row: 2;">Usuario</p>
                <input value="<%=sesion.getAttribute("usuario")%>" style="grid-column: 1/3; grid-row: 3;" type="text" name="documento" class="campo">

                <p style="grid-column: 3; grid-row: 2;">Nombre</p>
                <input style="grid-column: 3; grid-row: 3;" type="text" name="nombre" class="campo">

                <p style="grid-column: 4; grid-row: 2;">Apellido</p>
                <input style="grid-column: 4; grid-row: 3;" type="text" name="apellido" class="campo">

                <p style="grid-column: 1; grid-row: 4;">Correo electrónico (Email)</p>
                <input value="<%=sesion.getAttribute("email")%>" style="grid-column: 1/3; grid-row: 5;" type="email" name="email" class="campo">

                <p style="grid-column: 3; grid-row: 4;">Teléfono celular</p>
                <input style="grid-column: 3; grid-row: 5;" type="number" name="telefono" class="campo">

                <p style="grid-column: 4; grid-row: 4;">Tarjeta de pago</p>
                <input style="grid-column: 4; grid-row: 5;" type="number" name="tarjeta" class="campo">

                <input class="btn-final" type="reset" value="BORRAR" style="grid-row: 6; grid-column: 3; background-color: #ff0000;">

                <button class="btn-final" style="grid-row: 6; grid-column: 4;">CONFIRMAR</button>
            </form>

            <form class="datos-contraseña">
                <h3>Cambiar contraseña</h3>

                <p style="grid-column: 1; grid-row: 2;">Contraseña actual</p>
                <input style="grid-column: 1; grid-row: 3;" name="pass-actual" type="password" class="campo">

                <p style="grid-column: 1; grid-row: 4;">Contraseña nueva</p>
                <input style="grid-column: 1; grid-row: 5;" type="password" name="pass-nueva" class="campo">

                <p style="grid-column: 1; grid-row: 6;">Repetir contraseña</p>
                <input style="grid-column: 1; grid-row: 7;" type="password" name="pass-repetir" class="campo">

                <button class="btn-final" style="grid-row: 8; grid-column: 1; justify-self: end;">CONFIRMAR</button>
            </form>
        </div>

        <!--Inicio de footer-->
        <div class="pie_pagina">
            <div class="iconos"> 
                <div> <a href="#"> <i class="fa-brands fa-instagram"></i></a> </div>
                <div> <a href="#"> <i class="fa-brands fa-square-facebook"></i> </a> </div>
                <div> <a href="#"> <i class="fa-brands fa-square-twitter"></i> </a> </div> 
            </div>
            <div class="info_pie">
                <div> <a href="#">Mas Informacion</a></div>
                <div> <a href="#">Herramientas y Api</a></div>
                <div> <a href="#">Asistencia </a></div>
                <div> <a href="#">Empresa </a></div>
            </div>
        </div>
        <!--fin de footer-->


        <%
            String usuario;
            String email;
            String telefono;
            
            String bd = "t_wave";
            String url = "jdbc:mysql://localhost/";
            String serverUser = "root";
            String serverPassword = "";
            String driver = "com.mysql.cj.jdbc.Driver";

            if (request.getParameter("guardar") != null) {
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                String dni = request.getParameter("documento");

                usuario = request.getParameter("user");
                email = request.getParameter("email");
                telefono = request.getParameter("telefono");

                String contrasenia = request.getParameter("password");
                //este insert contendrá la sentencia con los datos de las variables
                String update = "update usuario set mail='" + email + "', nombre='" + usuario + "', telefono='" + telefono + "' where id_usuario='" + sesion.getAttribute("id") + "';";

                try {
                    //realizar la conexion con la Base de Datos
                    Connection con = null;
                    st = null;

                    Class.forName(driver);
                    con = DriverManager.getConnection(url + bd, serverUser, serverPassword);

                    //Estas 2 lineas de código permiten hacer el insert
                    st = con.createStatement();
                    st.executeUpdate(update);

                    sesion.setAttribute("usuario", usuario);
                    sesion.setAttribute("email", email);
                    sesion.setAttribute("telefono", telefono);
                    sesion.setAttribute("dni", dni);
                    sesion.setAttribute("nombre", nombre);
                    sesion.setAttribute("apellido", apellido);

                    response.sendRedirect("../../index.jsp");
                } catch (Exception e) {
                    out.print(e);
                }
            }

            //este solo modifica la contraseña
            if (request.getParameter("changePassword") != null) {

                //Hacer comprobación de contrasenia original con el campo de "contrasenia actual" del formulario
                String originPassword = "";
                String oldPassword = request.getParameter("oldPassword");
                String newPassword1 = request.getParameter("newPassword1");
                String newPassword2 = request.getParameter("newPassword2");

                if (newPassword1.equals(newPassword2)) {
                    //si la nueva contraseña es ingresada correctamente, se conecta la pagina con la base de datos
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        cx = DriverManager.getConnection(url + bd, serverUser, serverPassword);
                        st = cx.createStatement();
                        st.executeUpdate("UPDATE usuario SET contrasenia='" + md5.getMD5(newPassword1) + "' WHERE id_usuario='" + sesion.getAttribute("id") + "';");

                        response.sendRedirect("../../index.jsp");

                    } catch (Exception e) {
                        out.print(e);
                    }
                } else {
                    out.print("Las contraseñas no coinciden");
                }

            }
        %>


    </body>
</html>