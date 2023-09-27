<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Iniciar Sesión</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">


        <!--Fuente montserrat-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">

        <link href="../../CSS/cuentas.css" rel="stylesheet" type="text/css"/>

        <link rel="icon" href="../img/logo-sin-fondo.png" type="png" sizes= "16px">
        
    </head>
    <body>
        <%
            String urlServletCrearUsuario = "/ProgramadorNovato/SvCrearUsuario";
            String urlServletIngresarUsuarioYaCreado = "/ProgramadorNovato/SvIngresarConUsuarioYaCreado";
        %>

        <!-- Inicio del contenedor de formularios -->
        <div class="contedor_principal" style="padding-top: 5%;">
            <div id="cont" class="contenedor_registros" style="height: 85vh !important;">

                <div id="registroForm" style="display: none;">
                    <form action="<%=urlServletCrearUsuario%>" method="post">
                        <h1 style="margin-bottom: 0;"> Registro </h1>

                        <p><a href="#a" onclick="mostrarIngreso()">Ya tienes una cuenta? Ingresa</a></p>

                        <div class="nombre" style="margin-bottom: 0;">
                            <p style="font-size: 20px;"> Usuario: </p>
                            <input type="text" class="form-control" id="user" name="userRegistro" aria-describedby="textHelp" required="required">
                        </div>
                        
                        <div class="gmail" style="margin-bottom: 0;">
                            <p style="font-size: 20px;"> Email: </p>
                            <input type="email" class="form-control" id="email" name="emailRegistro" aria-describedby="emailHelp" required="required">
                        </div>
                        
                        <div class="contraseña" style="margin-bottom: 0;">
                            <p style="font-size: 20px;"> Contraseña: </p>
                            <input type="password" class="form-control" id="password" name="passwordRegistro" required="required">
                        </div>
                                                
                        <div class="apellido" style="margin-bottom: 0;">
                            <p style="font-size: 20px;"> Nombre y apellido: </p>
                            <input type="text" class="form-control" aria-describedby="textHelp" required="required">
                        </div>
                        
                        <button type="submit" name="Registro" class="button">Continuar</button>
                    </form>
                </div>



                <div id="ingresoForm">
                    <form method="POST" action="<%=urlServletIngresarUsuarioYaCreado%>">                
                        <h1 style="margin-bottom: 0;"> Iniciar Sesión </h1>

                        <p><a href="#a" onclick="mostrarRegistro()">No tienes una cuenta? Regístrate</a></p>

                        <div class="Inicio_sesion_cuenta">
                            <p> Email: </p>
                            <input name="emailIngreso" type="email" class="form-control" id="exampleInputEmail1">
                        </div>

                        <div class="Inicio_sesion_cuenta_contraseña">
                            <p> Contraseña: </p>
                            <input name="passwordIngreso" type="password" class="form-control" id="exampleInputPassword1">
                        </div>

                        <button name="Ingreso" type="submit" class="button">Continuar</button>    
                        <!--<p style="float: left;"> <a href="registro.html"> ¿No tienes cuenta? </a> </p>-->
                        <p style="float: right;"> <a href="restablecer contraseña.html"> ¿Olvidaste la contraseña? </a> </p>
                    </form>
                </div> 


                <script>
                    function mostrarRegistro() {
                        document.getElementById('registroForm').style.display = 'block';
                        document.getElementById('ingresoForm').style.display = 'none';
                    }

                    function mostrarIngreso() {
                        document.getElementById('registroForm').style.display = 'none';
                        document.getElementById('ingresoForm').style.display = 'block';
                    }
                </script> 

            </div>
        </div>
        <!--fin del contenedor de formularios-->



    </body>
</html>