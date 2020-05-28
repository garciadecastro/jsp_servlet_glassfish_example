
package confirmacion.servicios;

/**
 *
 * @author carlosgarciadecastro
 */
public class Usuario {
    //Clase sencilla de java donde se definen las variables que tendrán las instancias de usuarios.
    
    private String nombre;
    private String id;
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }    
    

    public Usuario(String nombre, String id) {
        this.nombre = nombre;
        this.id = id;
    }
    
    public Usuario(String id) {
        this.id = id;
    }
    
    public Usuario() {
        
    }
    
            
    
}
