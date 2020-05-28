package confirmacion.servicios;

import java.util.HashMap;

/**
 * @author carlosgarciadecastro
 */
public class ClaseServicios {

//Creamos una variable llamado 'usuarios' de tipo HashMap que contendrá los nombres
//y los passwords que posteriormente vamos a loguear
    HashMap<String, String> usuarios = new HashMap<String, String>();

    public HashMap<String, String> inicializar() {
        usuarios.put("001", "Dario");
        usuarios.put("002", "Pablo");
        usuarios.put("101", "Pedro");
        usuarios.put("201", "Isabel");
        return usuarios;

    }

    public boolean autenticar(String id) {
        if (usuarios.get(id) == null) {
            return false;
        }

        return true;

    }

    public Usuario getDetalles(String id) {
        Usuario user = new Usuario();
        user.setNombre(usuarios.get(id));
        user.setId(id);
        return user;
    }

}
