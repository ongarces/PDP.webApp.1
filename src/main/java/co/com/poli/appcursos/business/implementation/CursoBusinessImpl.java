package co.com.poli.appcursos.business.implementation;

import co.com.poli.appcursos.business.ICursoBusiness;
import co.com.poli.appcursos.dao.implementation.CursoDaoImpl;
import co.com.poli.appcursos.model.Curso;
import java.util.List;

/**
 *
 * @author cgaop
 */
public class CursoBusinessImpl implements ICursoBusiness {

    private CursoDaoImpl cursoDaoImpl = new CursoDaoImpl();

    @Override
    public List<Curso> obtenerListaCursos() {
        return cursoDaoImpl.obtenerListaCursos();
    }

    @Override
    public Curso obtenerCurso(String idCurso) {
        return cursoDaoImpl.obtenerCurso(idCurso);
    }

    @Override
    public String crearCurso(Curso curso) {
        String respuesta = "Curso ya existe";
        Curso cursoNuevo = obtenerCurso(curso.getIdCurso());//crea y extrae el curso que mandan
        if (cursoNuevo == null) {//si no esta buscado xel id(no existe)-> crea
            respuesta = cursoDaoImpl.crearCurso(curso);
        }
        return respuesta;
    }

    @Override
    public String modificarCurso(Curso curso) {
        String respuesta = "Curso no existe";
        Curso cursoNuevo = obtenerCurso(curso.getIdCurso());
        if (cursoNuevo != null) {//si esta--> modifique
            respuesta = cursoDaoImpl.modificarCurso(curso);
        }
        return respuesta;
    }

    @Override
    public String eliminarCurso(String idCurso) {
        String respuesta = "Curso no existe";
        Curso cursoNuevo = obtenerCurso(idCurso);
        if (cursoNuevo != null) {
            respuesta = cursoDaoImpl.eliminarCurso(idCurso);
        }
        return respuesta;
    }

}
