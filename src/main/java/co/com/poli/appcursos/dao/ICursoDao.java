/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.com.poli.appcursos.dao;

import co.com.poli.appcursos.model.Curso;
import java.util.List;

/**
 *
 * @author giovanny
 */
public interface ICursoDao {
    
    List<Curso> obtenerListaCursos();
    Curso obtenerCurso(String idCurso);
    String crearCurso(Curso curso);
    String modificarCurso(Curso curso);
    String eliminarCurso(String idCurso);
    
}
