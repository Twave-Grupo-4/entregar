/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.programadornovato.programadornovato.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author saust
 */
@WebServlet(name = "SvFormularioDeCrearUsuario", urlPatterns = {"/SvFormularioDeCrearUsuario"})
public class SvFormularioDeCrearUsuario extends HttpServlet {

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
        processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String urlServletCrearUsuario = "/ProgramadorNovato/SvCrearUsuario";
            //style=\"display: none;\"
            
            //<p><a href=\"#a\" onclick=\"mostrarIngreso()\">Ya tienes una cuenta? Ingresa</a></p>\n" + "
            out.println("<div>\n" +
"                    <form action=\"<%=urlServletCrearUsuario%>\" method=\"post\">\n" +
"                        <h1 class=\"a\">Crear usuario</h1>\n" +                        
"                        <div class=\"mb-3 nombre\">\n" +
"                            <label for=\"exampleInputEmail1\" class=\"form-label\"><p>Nombre</p></label>\n" +
"                            <input type=\"text\" class=\"form-control\" aria-describedby=\"textHelp\" required=\"required\">\n" +
"                        </div>\n" +
"                        <div class=\"mb-3 apellido\">\n" +
"                            <label for=\"exampleInputEmail1\" class=\"form-label\"><p>Apellido</p></label>\n" +
"                            <input type=\"text\" class=\"form-control\" aria-describedby=\"textHelp\" required=\"required\">\n" +
"                        </div>\n" +
"                        \n" +
"                        \n" +
"                        <div class=\"mb-3 nombre\">\n" +
"                            <label for=\"exampleInputEmail1\" class=\"form-label\"><p>Usuario</p></label>\n" +
"                            <input type=\"text\" class=\"form-control\" id=\"user\" name=\"userRegistro\" aria-describedby=\"textHelp\" required=\"required\">\n" +
"                        </div>\n" +
"\n" +
"                        <div class=\"mb-3 gmail\">\n" +
"                            <label for=\"exampleInputEmail1\" class=\"form-label\"><p>Email</p></label>\n" +
"                            <input type=\"email\" class=\"form-control\" id=\"email\" name=\"emailRegistro\" aria-describedby=\"emailHelp\" required=\"required\">\n" +
"                        </div>\n" +
"\n" +
"                        <div class=\"mb-3 contraseña\">\n" +
"                            <label for=\"exampleInputPassword1\" class=\"form-label\"><p>Contraseña</p></label>\n" +
"                            <input type=\"password\" class=\"form-control\" id=\"password\" name=\"passwordRegistro\" required=\"required\">\n" +
"                        </div>\n" +
"\n" +
"                        <div class=\"mb-3 nombre\">\n" +
"                            <label for=\"exampleInputPassword1\" class=\"form-label\"><p>Teléfono</p></label>\n" +
"                            <input type=\"text\" class=\"form-control\" id=\"telefono\" name=\"telefonoRegistro\" required=\"required\">\n" +
"                        </div>\n" +
"\n" +
"                        <div class=\"mb-3 form-check\">\n" +
"                            <input name=\"notificacionesIngreso\" type=\"checkbox\" class=\"form-check-input\" id=\"exampleCheck2\">\n" +
"                            <label class=\"form-check-label\" for=\"exampleCheck2\"><p>Recibir notificaciones</p></label>\n" +
"                        </div>\n" +
"                        \n" +
"                        <button type=\"submit\" name=\"Registro\" class=\"btn btn-primary\">Crear usuario</button>\n" +
"                    </form>\n" +
"                </div>");
            
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String urlServletCrearUsuario = "/ProgramadorNovato/SvCrearUsuario";
            
            out.println("<div>\n" +
"                    <form action=\"<%=urlServletCrearUsuario%>\" method=\"post\">\n" +
"                        <h1 class=\"a\">Crear usuario</h1>\n" +
"                        <p><a href=\"#a\" onclick=\"mostrarIngreso()\">Ya tienes una cuenta? Ingresa</a></p>\n" +
"                        <div class=\"mb-3 nombre\">\n" +
"                            <label for=\"exampleInputEmail1\" class=\"form-label\"><p>Nombre</p></label>\n" +
"                            <input type=\"text\" class=\"form-control\" aria-describedby=\"textHelp\" required=\"required\">\n" +
"                        </div>\n" +
"                        <div class=\"mb-3 apellido\">\n" +
"                            <label for=\"exampleInputEmail1\" class=\"form-label\"><p>Apellido</p></label>\n" +
"                            <input type=\"text\" class=\"form-control\" aria-describedby=\"textHelp\" required=\"required\">\n" +
"                        </div>\n" +
"                        \n" +
"                        \n" +
"                        <div class=\"mb-3 nombre\">\n" +
"                            <label for=\"exampleInputEmail1\" class=\"form-label\"><p>Usuario</p></label>\n" +
"                            <input type=\"text\" class=\"form-control\" id=\"user\" name=\"userRegistro\" aria-describedby=\"textHelp\" required=\"required\">\n" +
"                        </div>\n" +
"\n" +
"                        <div class=\"mb-3 gmail\">\n" +
"                            <label for=\"exampleInputEmail1\" class=\"form-label\"><p>Email</p></label>\n" +
"                            <input type=\"email\" class=\"form-control\" id=\"email\" name=\"emailRegistro\" aria-describedby=\"emailHelp\" required=\"required\">\n" +
"                        </div>\n" +
"\n" +
"                        <div class=\"mb-3 contraseña\">\n" +
"                            <label for=\"exampleInputPassword1\" class=\"form-label\"><p>Contraseña</p></label>\n" +
"                            <input type=\"password\" class=\"form-control\" id=\"password\" name=\"passwordRegistro\" required=\"required\">\n" +
"                        </div>\n" +
"\n" +
"                        <div class=\"mb-3 nombre\">\n" +
"                            <label for=\"exampleInputPassword1\" class=\"form-label\"><p>Teléfono</p></label>\n" +
"                            <input type=\"text\" class=\"form-control\" id=\"telefono\" name=\"telefonoRegistro\" required=\"required\">\n" +
"                        </div>\n" +
"\n" +
"                        <div class=\"mb-3 form-check\">\n" +
"                            <input name=\"notificacionesIngreso\" type=\"checkbox\" class=\"form-check-input\" id=\"exampleCheck2\">\n" +
"                            <label class=\"form-check-label\" for=\"exampleCheck2\"><p>Recibir notificaciones</p></label>\n" +
"                        </div>\n" +
"                        \n" +
"                        <button type=\"submit\" name=\"Registro\" class=\"btn btn-primary\">Crear usuario</button>\n" +
"                    </form>\n" +
"                </div>");
            
        }
        
        
        
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
