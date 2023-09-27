<%-- 
    Document   : crearUsuario
    Created on : Aug 21, 2023, 9:08:30 PM
    Author     : saust
--%>
<%@page import="conexion.Conexion"%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>

<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>

        <!-- BOOTSTRAP -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            if (sesion.getAttribute("logueado") == null || sesion.getAttribute("logueado").equals("0")) {
                response.sendRedirect("loginUsuario.jsp");
            }
        %>

        <%
            String id = request.getParameter("id");
            String user = request.getParameter("usuario");
            String email = request.getParameter("mail");
            String telefono = request.getParameter("telefono");
        %>

        <%
            String bd = "t_wave";
            String url = "jdbc:mysql://localhost/";
            String userDB = "root";
            String password = "";
        %>

        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">

                    <form action="editarUsuario.jsp" method="get">
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Usuario</label>
                            <input type="text" value="<%= user%>" class="form-control" id="user" name="user" aria-describedby="textHelp" placeholder="Usuario" required="required">
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Email</label>
                            <input type="email" value="<%= email%>" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Email" required="required">
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Contraseña</label>
                            <input type="password" value="" class="form-control" id="password" name="password" placeholder="Contraseña" required="required">
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Teléfono</label>
                            <input type="text" value="<%= telefono%>" class="form-control" id="telefono" name="telefono" placeholder="Teléfono" required="required">
                        </div>

                        <div class="mb-3 form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Check me out</label>
                        </div>

                        <button type="submit" name="enviar" class="btn btn-primary">Crear usuario</button>

                        <input type="hidden" name="id" value="<%= id%>">
                    </form>

                </div>
            </div>
        </div>

        <%
            if (request.getParameter("enviar") != null) {

                user = request.getParameter("user");
                email = request.getParameter("email");
                telefono = request.getParameter("telefono");

                String contrasenia = request.getParameter("password");
                //este insert contendrá la sentencia con los datos de las variables
                String update = "update usuario set mail='" + email + "', nombre='" + user + "', telefono='" + telefono + "' where id_usuario='" + id + "' and contrasenia='" + contrasenia + "';";
                try {
                    //realizar la conexion con la Base de Datos
                    Connection con = null;
                    Statement st = null;

                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(url + bd, userDB, password);

                    //Estas 2 lineas de código permiten hacer el insert
                    st = con.createStatement();
                    st.executeUpdate(update);

                } catch (Exception e) {
                    out.print(e);
                }

                if (request.getParameter("login") != null) {

                    try{
                       
                        sesion.setAttribute("logueado", "1");
                        sesion.setAttribute("usuario", user);
                        sesion.setAttribute("email", email);
                        sesion.setAttribute("password", contrasenia);
                        sesion.setAttribute("id", id);

                        response.sendRedirect("../index.jsp");
                        
                        out.print("<div class=\"alert alert-danger\" role=\"alert\">Usuario no valido</div>");
                    }catch (Exception e) {
                        out.print("<div class=\"alert alert-danger\" role=\"alert\">Error al actualizar</div>");
                    }
                }

                //2 métodos para redireccionar la pagina al index.jsp
                response.sendRedirect("../../index.jsp");

                //método que no está funcionando porque regresa a la interfaz del index pero con la URL de "ProgramadorNovato/Usuario/editarUsuario.jsp?etc,etc,etc"
                //request.getRequestDispatcher("../index.jsp").forward(request, response);
            }
        %>

    </body>
</html>
