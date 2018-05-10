/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.com.poli.appcursos.controller;

import co.com.poli.appcursos.business.implementation.UsuarioBusinessImpl;
import co.com.poli.appcursos.data.UsuarioData;
import co.com.poli.appcursos.model.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author cgaop
 */
public class IngresoServlet extends HttpServlet {

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
        
        HttpSession session = request.getSession(true);//creamos la session
        
        RequestDispatcher rd = null; //encargado de redireccionar la peticion
        
        String email = request.getParameter("txtemail");
        String clave = request.getParameter("txtclave");
        
        UsuarioBusinessImpl uBusinessImpl = new UsuarioBusinessImpl();
        Usuario  usuario = uBusinessImpl.obtenerUsuario(email, clave);
        
        String mensaje="";
        
        if (usuario == null) {//Si usuario no existe
            rd = request.getRequestDispatcher("/mensaje.jsp");
            mensaje = "Email o clave no validos...";
        }else{//si existe
            rd = request.getRequestDispatcher("/view/menu.jsp");
        }
        
        //vamos a setear el mensaje en la session y el usuario
        session.setAttribute("MENSAJE ", mensaje);
        session.setAttribute("USUARIO", usuario);
        
        rd.forward(request, response);//redirecionar peticion        
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
