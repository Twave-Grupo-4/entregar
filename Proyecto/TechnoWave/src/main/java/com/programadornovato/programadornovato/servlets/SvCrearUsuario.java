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

/**
 *
 * @author saust
 */
@WebServlet(name = "SvCrearUsuario", urlPatterns = {"/SvCrearUsuario"})
public class SvCrearUsuario extends HttpServlet {

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

    /*
        //Manera resumida de hacer los inserts, separando el codigo JAVA del código JSP 
        Conexion conexion = new Conexion();
        conexion.insertUsuario(mail, contrasenia, user, telefono);
    */
        //Variables: obtención de los valores del formulario
        String user = request.getParameter("userRegistro");
        String mail = request.getParameter("emailRegistro");
        String contrasenia = request.getParameter("passwordRegistro");
        String telefono = request.getParameter("telefonoRegistro");

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

        //este insert contendrá la sentencia con los datos de las variables
        String insert = "insert into usuario(mail, contrasenia, nombre, telefono) VALUES('" + mail + "', '" + md5.getMD5(contrasenia) + "', '" + user + "', '" + telefono + "');";
        try {
            //realizar la conexion con la Base de Datos
            Connection con = null;
            st = null;

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url + bd, serverUser, serverPassword);

            //Estas 2 lineas de código permiten hacer el insert
            st = con.createStatement();
            st.executeUpdate(insert);
        } catch (Exception e) {
            out.print(e);
        }
        
        //2 métodos para redireccionar la pagina al index.jsp
        response.sendRedirect("HTML/index.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
