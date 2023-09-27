<%-- 
    Document   : crearUsuario
    Created on : Aug 21, 2023, 9:08:30 PM
    Author     : saust
--%>
<%@page import="Utils.Encriptar"%>
<%@page import="conexion.Conexion"%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>

<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Crear Usuario</title>
        <meta charset="UTF-3">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- link al CSS -->
        <link href="../../CSS/cuentas.css" rel="stylesheet" type="text/css"/>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta+twbs4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
    
    </head>
    <body>
        <%
            Encriptar md5 = new Encriptar();
            
            String bd = "t_wave";
            String url = "jdbc:mysql://localhost/";
            String userDB = "root";
            String password = "";
        %>
        
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">

                    <form action="crearUsuario.jsp" method="post">
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Usuario</label>
                            <input type="text" class="form-control" id="user" name="userRegistro" aria-describedby="textHelp" placeholder="Usuario" required="required">
                        </div>
                        
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Nombre</label>
                            <input type="text" class="form-control" aria-describedby="textHelp" placeholder="Nombre" required="required">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Apellido</label>
                            <input type="text" class="form-control" aria-describedby="textHelp" placeholder="Apellido" required="required">
                        </div>
                        
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="emailRegistro" aria-describedby="emailHelp" placeholder="Email" required="required">
                        </div>
                        
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Contraseña</label>
                            <input type="password" class="form-control" id="password" name="passwordRegistro" placeholder="Contraseña" required="required">
                        </div>
                        
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Teléfono</label>
                            <input type="text" class="form-control" id="telefono" name="telefonoRegistro" placeholder="Teléfono" required="required">
                        </div>
                        
                        <div class="mb-3 form-check">
                            <input name="notificaciones" type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Recibir Notificaciones</label>
                        </div>
                        <button type="submit" name="Registro" class="btn btn-primary">Crear usuario</button>
                    </form>

                </div>
            </div>
        </div>
        
        <%
            if(request.getParameter("Registro") != null ){
                //estas variables toman sus valores del form
                String user = request.getParameter("userRegistro");
                String mail = request.getParameter("emailRegistro");
                String contrasenia = request.getParameter("passwordRegistro");
                String telefono = request.getParameter("telefonoRegistro");
                
                //este insert contendrá la sentencia con los datos de las variables
                String insert = "insert into usuario(mail, contrasenia, nombre, telefono) VALUES('"+mail+"', '"+md5.getMD5(contrasenia)+"', '"+user+"', '"+telefono+"');";
                try{
                    //realizar la conexion con la Base de Datos
                    Connection con=null;
                    Statement st=null;
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(url+bd, userDB, password);
                    
                    //Estas 2 lineas de código permiten hacer el insert
                    st = con.createStatement();
                    st.executeUpdate(insert);
                    
                }catch(Exception e){
                    out.print(e);
                }
                

                //2 métodos para redireccionar la pagina al index.jsp
                response.sendRedirect("../../index.jsp");

                //este tira error
                //request.getRequestDispatcher("index.jsp").forward(request, response);
                
                
                
                
                
                
                /*
                //Manera resumida de hacer los inserts, separando el codigo JAVA del código JSP 
                Conexion conexion = new Conexion();
                conexion.insertUsuario(mail, contrasenia, user, telefono);
                */
            }
        %>
        
    </body>
</html>
