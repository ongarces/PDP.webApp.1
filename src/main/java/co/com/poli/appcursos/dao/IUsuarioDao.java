/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.com.poli.appcursos.dao;

import co.com.poli.appcursos.model.Usuario;
import java.util.List;

/**
 *
 * @author giovanny
 */
public interface IUsuarioDao {
  
    List<Usuario> obtenerListaUsuarios();
    Usuario obtenerUsuario(String documento);
    String crearUsuario(Usuario usuario);
    String modificarUsuario(Usuario usuario);
    String eliminarUsuario( String documento);
    
    Usuario obtenerUsuario(String email, String clave);
    
}
