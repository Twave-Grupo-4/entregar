/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servelets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import com.mysql.jdbc.Driver;
import conexion.Conexion;

/**
 *
 * @author saust
 */
@WebServlet(name = "Usuarios", urlPatterns = {"/Usuarios"})
public class Usuarios extends HttpServlet {

    String bd = "t_wave";
    String url = "jdbc:mysql://localhost/";
    String serverUser = "root";
    String serverPassword = "";
    String driver = "com.mysql.cj.jdbc.Driver";

    Connection cx = null;
    Statement st = null;
    ResultSet rs = null;

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
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            try {
                Conexion conexion = new Conexion();
                conexion.conectar();
                ResultSet rs = conexion.registrosMostrar("", "", "");
                while (rs.next()) {
                    out.println("<tr>"
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
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
