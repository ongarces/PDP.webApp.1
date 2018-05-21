package co.com.poli.appcursos.data;

import co.com.poli.appcursos.model.Curso;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author cgaop
 */
public class CursoData {
        
    private static List<Curso> listaCursos;
    
    static {        
        listaCursos = new ArrayList<Curso>(){
            {
                add(new Curso("100", "Java", 15D, 500000D, Boolean.TRUE));
                add(new Curso("200", "Php", 20D, 600000D, Boolean.TRUE));
                add(new Curso("300", "Ruby", 20D, 650000D, Boolean.TRUE));
                add(new Curso("400", "JS", 20D, 680000D, Boolean.TRUE));
                add(new Curso("500", "Html", 20D, 30000D, Boolean.TRUE));
            }
        };                
    }

    public static List<Curso> getListaCursos() {
        return listaCursos;
    }

    public static void setListaCursos(List<Curso> aListaCursos) {
        listaCursos = aListaCursos;
    }
    
    
}
