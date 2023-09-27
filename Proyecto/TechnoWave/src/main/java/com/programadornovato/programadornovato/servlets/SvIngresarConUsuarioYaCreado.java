/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.programadornovato.programadornovato.servlets;

import Utils.Encriptar;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author saust
 */
@WebServlet(name = "SvIngresarConUsuarioYaCreado", urlPatterns = {"/SvIngresarConUsuarioYaCreado"})
public class SvIngresarConUsuarioYaCreado extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //VARIABLES:
        //Variables: obtención de los valores del formulario
        String email = request.getParameter("emailIngreso");
        String password = request.getParameter("passwordIngreso");
        
        //Variables: ejecución de la base de datos, ejecución de las consultas y encriptación de la contraseña
        Encriptar md5 = new Encriptar();
        Connection cx = null;
        Statement st = null;
        ResultSet rs = null;

        //Variables: conexión con la base de datos
        String bd = "t_wave";
        String url = "jdbc:mysql://localhost/";
        String serverUser = "root";
        String serverPassword = "";
        //
        //
        
        //Variables: variable Http Session para guardar la info del usuario ingresado dentro de la página web
        HttpSession sesion = request.getSession();

        try {
            //Se hace la conexión con la base de datos
            Class.forName("com.mysql.cj.jdbc.Driver");
            cx = DriverManager.getConnection(url + bd, serverUser, serverPassword);
            st = cx.createStatement();
            //El ResultSet rs (set de resultados) toma los datos de la consulta, es decir, toma la tupla del usuario ingresado.
            rs = st.executeQuery("SELECT * FROM usuario WHERE mail='" + email + "' AND contrasenia='" + md5.getMD5(password) + "';");
            
            //Si el set de resultados de la consulta obtiene datos y se encuentra lleno, el ciclo while se activa.
            //En caso de que el set de resultados esté vacío, es decir, que no haya registros que coincidan con los datos ingresados,
            //el ciclo while no se activa.
            while (rs.next()) {

                //Se insertan los datos de la cuenta ingresada en el HttpSession dentro de la página web
                sesion.setAttribute("logueado", "1");
                sesion.setAttribute("usuario", rs.getString("nombre"));
                sesion.setAttribute("email", email);
                sesion.setAttribute("id", rs.getString("id_usuario"));
                sesion.setAttribute("telefono", rs.getString("telefono"));

                //Una vez terminada la petición, se regresa a la pagina principal, osea el index.jsp
                response.sendRedirect("HTML/index.jsp");
            }
            //Como no hay registros que coincidan con los datos ingresados, el set de resultados de la consulta "rs" se encuentra vacío
            //Al encontrarse vacío no se puede activar el ciclo while, 
            //por lo que el lector de código sigue de largo y detecta (y por ende devuelve) el cartel <div> de "Usuario no válido" 
            //out.print("<div class=\"alert alert-danger\" role=\"alert\">Usuario no valido</div>");
            //response.sendRedirect("HTML/index.jsp");
            
        } catch (Exception e) {
            out.print("<div class=\"alert alert-danger\" role=\"alert\">Ha habido un error</div>");
        }
        
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
