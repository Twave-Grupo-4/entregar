<%@page import="conexion.Conexion"%>
<%@page import="Utils.Encriptar"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario</title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-3">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- CSS -->
        <link href="../../CSS/Main-page.css" rel="stylesheet" type="text/css"/>
        <link href="../../CSS/general.css" rel="stylesheet" type="text/css"/>
        <link href="../../CSS/cuentas.css" rel="stylesheet" type="text/css"/>
        <link href="../../CSS/design-form.css" rel="stylesheet" type="text/css"/>

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
            Encriptar md5 = new Encriptar();

            HttpSession sesion = request.getSession();
            if (sesion.getAttribute("logueado") == null || sesion.getAttribute("logueado").equals("0")) {
                response.sendRedirect("loginUsuario.jsp");
            }
            Connection cx = null;
            Statement st = null;
            ResultSet rs = null;
        %>


        <%
            String id = request.getParameter("id");
            String usuario = request.getParameter("usuario");
            String email = request.getParameter("mail");
            String telefono = request.getParameter("telefono");
        %>



        <nav class="Menu_principal"><!-- Inicio del Menu de Arriba-->
            <nav class="Menu_principal_cajas">
                <div class="logo">
                    <a href="#">
                        <img class="foto_logo_twave" src="../../Imagenes/negro_t-wave.png" alt="logo">
                    </a> 
                </div>
                <!--esta parte es la del buscador en si-->
                <div class="Caja_contenedora" style="margin-right: 200px;">
                    <div class="Caja_busqueda">
                        <input type="text" placeholder="Busqueda...">
                        <label class="icon">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </label>  
                    </div>  
                </div>
                <!--Fin del buscador-->
                <div class="btn-carrito">
                    <label for="btn-carrito2" class="icon-carrito"><img class="img-navbar" src="../../Imagenes/carrito.png" alt="alt"/></label>
                </div>

                <div class="btn-usuario">
                    <label class="icon-usuario"><a class="texto-normal" href="../../HTML/Usuario/datosUsuario.jsp"><img class="img-navbar user" src="../../Imagenes/user.png" alt="alt"/></a></label>
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
                <div> <a href="#"> <i class="fa-solid fa-fan"></i> <p class="texto"> Ventiladores </p> </a> </div>
                <div> <a href="#"> <i class="fa-solid fa-soap"></i> <p class="texto"> Hogar</p> </a> </div>
                <div> <a href="#"> <i class="fa-solid fa-print"></i> <p class="texto"> Impresoras</p> </a> </div>
                <div> <a href="#"> <i class="fa-solid fa-tv"></i> <p class="texto"> Televisores</p> </a></div>
                <div> <a href="#"> <i class="fa-solid fa-kitchen-set"></i> <p class="texto"> Heladeras </p> </a> </div>
                <div> <a href="#"> <i class="fa-solid fa-computer"></i> <p class="texto"> Computadoras </p> </a></div> 
            </nav>
        </nav><!-- Fin del Menu de Arriba-->


        <div class="Separador" style="background-color: #424242"> </div>
        <div>
            <h1><i><b>Configuración de usuario</b></i></h1>
            <br>
            <h1><a href="/ProgramadorNovato/SvCerrarSesion" class="boton-final" style="grid-row: 6; grid-column: 3;">Cerrar Sesión</a></h1>
        </div>
        
        <div class="contenedor-principal">
            <form class="datos-usuario">
                <h3>Datos de contacto</h3>

                <p style="grid-column: 1; grid-row: 2;">Usuario</p>
                <input value="<%= usuario%>" style="grid-column: 1; grid-row: 3;" type="text" name="user" class="campo">

                <p style="grid-column: 2; grid-row: 2;">Nombre</p>
                <input style="grid-column: 2; grid-row: 3;" type="text" name="nombre" class="campo">

                <p style="grid-column: 3; grid-row: 2;">Apellido</p>
                <input style="grid-column: 3; grid-row: 3;" type="text" name="apellido" class="campo">

                <p style="grid-column: 1; grid-row: 4;">Nro documento</p>
                <input style="grid-column: 1; grid-row: 5;" type="text" name="documento" class="campo">

                <p style="grid-column: 2; grid-row: 4;">Email</p>
                <input value="<%= email%>" style="grid-column: 2; grid-row: 5;" type="email" name="email" class="campo">

                <p style="grid-column: 3; grid-row: 4;">Teléfono</p>
                <input value="<%= telefono%>" style="grid-column: 3; grid-row: 5;" type="number" name="telefono" class="campo">

                <input class="boton-final" type="reset" value="Borrar" style="grid-row: 6; grid-column: 2; background-color: rgb(134, 26, 26);">

                <button name="guardar" type="submit" class="boton-final" style="grid-row: 6; grid-column: 3;">Guardar</button>
            </form>

            <form class="datos-contraseña" action="datosUsuario.jsp" method="POST">  
                <h3>Cambiar contraseña</h3>

                <p style="grid-column: 1; grid-row: 2;">Contraseña actual</p>
                <input name="oldPassword" style="grid-column: 1; grid-row: 3;" type="password" class="campo">

                <p style="grid-column: 1; grid-row: 4;">Contraseña nueva</p>
                <input name="newPassword1" style="grid-column: 1; grid-row: 5;" type="password" class="campo">

                <p style="grid-column: 1; grid-row: 6;">Repetir contraseña</p>
                <input name="newPassword2" style="grid-column: 1; grid-row: 7;" type="password" class="campo">

                <button name="changePassword" class="boton-final" style="grid-row: 7; grid-column: 2; justify-self: end;">Guardar</button>
            </form>
        </div>



        <!--<div class="container mt-5">
                <div class="row">
                    <div class="col-sm">
                        <h1>Datos Usuario</h1>
                        <form action="datosUsuario.jsp" method="POST">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Usuario</label>
                                <input name="user" type="text" class="form-control" placeholder="Usuario" required="required">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Contraseña</label>
                                <input name="password1" type="password" class="form-control" placeholder="Contraseña" required="required">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Repetir Contraseña</label>
                                <input name="password2" type="password" class="form-control" placeholder="Contraseña" required="required">
                            </div>
                            <div class="mb-3 form-check">
                                <input name="notificaciones" type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Recibir Notificaciones</label>
                            </div>
                            <button name="guardar" type="submit" class="btn btn-primary">Guardar</button>
                        </form>
                        <div><a href="../index.jsp" class="btn btn-danger">Regresar</a></div>
                    </div>
                </div>
            </div>-->
    </body>

    <%
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

                response.sendRedirect("../index.jsp");
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
</html>
