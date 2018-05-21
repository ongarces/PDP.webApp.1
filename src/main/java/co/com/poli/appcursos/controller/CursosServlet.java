package co.com.poli.appcursos.controller;

import co.com.poli.appcursos.business.implementation.CursoBusinessImpl;
import co.com.poli.appcursos.model.Curso;
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
public class CursosServlet extends HttpServlet {

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

        HttpSession session = request.getSession();
        RequestDispatcher rd = null;

        CursoBusinessImpl cBusinessImpl = new CursoBusinessImpl();

        String accion = request.getParameter("accion");

        switch (accion) {
            case "crear"://lo llamo de cursos.jsp
                String idCurso = request.getParameter("txtidcurso");
                String nombre = request.getParameter("txtnombrecurso");
                Double horas = Double.valueOf(request.getParameter("txthorascurso"));
                Double valor = Double.valueOf(request.getParameter("txtvalorcurso"));
                Boolean estado = Boolean.valueOf(request.getParameter("txtestadocurso"));
                
                Curso curso = new Curso(idCurso, nombre, horas, valor, estado);
                String msjCreate = cBusinessImpl.crearCurso(curso);
                session.setAttribute("MENSAJE", msjCreate);
                
                rd = request.getRequestDispatcher("/view/cursoLista.jsp");
                break;//listo
                
            case "eliminar":
                String idCursoDEL = request.getParameter("idCurso");
                
                String msjDEL = cBusinessImpl.eliminarCurso(idCursoDEL);                
                List<Curso> listaCursosDEL = cBusinessImpl.obtenerListaCursos();
                session.setAttribute("LISTADO", listaCursosDEL);
                
                rd = request.getRequestDispatcher("/view/cursoLista.jsp");
                break;//listo
                
            case "modificar":
                String idCursoMOD = request.getParameter("idCurso");
                
                Curso cursoMOD = cBusinessImpl.obtenerCurso(idCursoMOD);
                session.setAttribute("CMODIFICADO", cursoMOD);
                rd = request.getRequestDispatcher("/view/modCurso.jsp");
                break;
                
            case "actualizar":
                String idCursoUPDT2 = request.getParameter("txtidcurso");
                String nombreUPDT = request.getParameter("txtnombrecurso");
                Double horasUPDT = Double.valueOf(request.getParameter("txthorascurso"));
                Double valorUPDT = Double.valueOf(request.getParameter("txtvalorcurso"));
                Boolean estadoUPDT = Boolean.valueOf(request.getParameter("txtestadocurso"));
                
                Curso cursoUPDT = new Curso(idCursoUPDT2, nombreUPDT, horasUPDT, valorUPDT, estadoUPDT);
                String msjUPDT = cBusinessImpl.modificarCurso(cursoUPDT);
                List<Curso> listaCursoUDPT = cBusinessImpl.obtenerListaCursos();
                session.setAttribute("LISTADO", listaCursoUDPT);
                
                rd = request.getRequestDispatcher("/view/cursoLista.jsp");
                break;
                
            case "listar":                
                List<Curso> listaCursos = cBusinessImpl.obtenerListaCursos();
                session.setAttribute("LISTADO", listaCursos);
                
                rd = request.getRequestDispatcher("/view/cursoLista.jsp");
                
                break;//listo
                
            default:
                break;
        }rd.forward(request, response);
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
