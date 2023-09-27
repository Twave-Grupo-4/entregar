<%-- 
    Document   : borrarUsuario
    Created on : Aug 22, 2023, 12:54:20 AM
    Author     : saust
--%>
<%@page import="conexion.Conexion"%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page import="conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String bd = "t_wave";
            String url = "jdbc:mysql://localhost/";
            String user = "root";
            String password = "";
            String driver = "com.mysql.cj.jdbc.Driver";
            String id = request.getParameter("id");   
        /*
            try {
                Class.forName(driver);
                Connection con = null;
                con = DriverManager.getConnection(url+bd,user,password);
                String update = "DELETE FROM usuario WHERE id_usuario='"+request.getParameter("id")+"';";
                Statement st = con.createStatement();
                st.executeUpdate(update);
            }catch(Exception e){
                out.print(e);
            }
        */
                
            Conexion conexion = new Conexion();
            Exception a = conexion.eliminarUsuario(id);
            if(a != null){
                out.print(a);
            }
            
            //2 métodos para redireccionar la pagina al index.jsp
            response.sendRedirect("../../index.jsp");  
            
            
            
            //este da error
            //request.getRequestDispatcher("index.jsp").forward(request, response);
        %>
    </body>
</html>
