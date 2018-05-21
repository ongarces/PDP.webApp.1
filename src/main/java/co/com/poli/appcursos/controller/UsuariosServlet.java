package co.com.poli.appcursos.controller;

import co.com.poli.appcursos.business.implementation.UsuarioBusinessImpl;
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
public class UsuariosServlet extends HttpServlet {

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
        HttpSession session = request.getSession(true);
        RequestDispatcher rd = null;

        UsuarioBusinessImpl uBusinessImpl = new UsuarioBusinessImpl();

        String accion = request.getParameter("accion");//capture la accion...

        switch (accion) {
            case "crear":
                String documento = request.getParameter("txtdocumento");
                String nombres = request.getParameter("txtnombres");
                String apellidos = request.getParameter("txtapellidos");
                String email = request.getParameter("txtemail");
                String clave = request.getParameter("txtclave");
                Boolean estado = Boolean.valueOf(request.getParameter("txtestado"));
                String rol = request.getParameter("txtrol");

                Usuario usuario = new Usuario(documento, nombres, apellidos, email, clave, rol, estado);
                String mensaje = uBusinessImpl.crearUsuario(usuario);
                session.setAttribute("MENSAJE", mensaje);

                rd = request.getRequestDispatcher("/mensaje.jsp");

                break;

            case "eliminar":
                String idUsuario = request.getParameter("idUser");
                String msj = uBusinessImpl.eliminarUsuario(idUsuario);
                
                List<Usuario> listaUsers = uBusinessImpl.obtenerListaUsuarios();
                session.setAttribute("LISTADO", listaUsers);
                
                rd = request.getRequestDispatcher("/view/usuarioLista.jsp");
                break;

            case "modificar":
                String idUserUPDT = request.getParameter("idUser");
                
                Usuario userUPDT = uBusinessImpl.obtenerUsuario(idUserUPDT);
                session.setAttribute("UMODIFICADO", userUPDT);// mando el obj(User) a la ruta rd para modificarlo
                
                rd = request.getRequestDispatcher("/view/modUsuario.jsp");
                break;
                
            case "actualizar":
                String documentoMOD = request.getParameter("txtdocumento");
                String nombresMOD = request.getParameter("txtnombres");
                String apellidosMOD = request.getParameter("txtapellidos");
                String emailMOD = request.getParameter("txtemail");
                String claveMOD = request.getParameter("txtclave");
                Boolean estadoMOD = Boolean.valueOf(request.getParameter("txtestado"));
                String rolMOD = request.getParameter("txtrol");
                
                Usuario userMOD = new Usuario(documentoMOD, nombresMOD, apellidosMOD, emailMOD, claveMOD, rolMOD, estadoMOD);
                String msjMOD = uBusinessImpl.modificarUsuario(userMOD);
                List<Usuario> listaUsuariosMOD = uBusinessImpl.obtenerListaUsuarios();
                session.setAttribute("LISTADO", listaUsuariosMOD);
                
                rd = request.getRequestDispatcher("/view/usuarioLista.jsp");
                break;

            case "listar":
                List<Usuario> listaUsuarios = uBusinessImpl.obtenerListaUsuarios();
                session.setAttribute("LISTADO", listaUsuarios);
                rd = request.getRequestDispatcher("/view/usuarioLista.jsp");
                break;
                
            default:
                break;
        } rd.forward(request, response);
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
