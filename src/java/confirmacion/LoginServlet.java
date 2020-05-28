package confirmacion;

import confirmacion.servicios.ClaseServicios;
import confirmacion.servicios.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author carlosgarciadecastro
 */
@WebServlet(name= "LoginServlet", urlPatterns = {"/index"}) // inicio de carga de la app, NO TOCAR

public class LoginServlet extends HttpServlet {

    //El método doGet está sobre escrito para recibir y procesar los valores introducidos por el formulario.
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
       response.setContentType("text/html;charset=UTF-8");

       //Las variables de este método controlan si la contraseña es correcta, pero ignoran el nombre introducido.
       String identificador; 
       boolean resultado;
       RequestDispatcher dis;
       identificador = request.getParameter("Id");
       ClaseServicios clServicio = new ClaseServicios();
       clServicio.inicializar();
       resultado = clServicio.autenticar(identificador);
       
        	
//Cuando el booleano devuelve true significa que la contraseña existe, tenemos entonces dos opciones:
//usuarios con privilegios cuyo password comienza por 0 y usuarios normales. En el caso de los primeros
//accederán a una página donde podrán ver información sobre el resto de usuarios.
        if (resultado) {
            Usuario user = clServicio.getDetalles(identificador);
            request.setAttribute("user", user);
            char puesto = identificador.charAt(0);
            if (puesto == '0') {
                dis = request.getRequestDispatcher("gestion.jsp");
            } else {
                dis = request.getRequestDispatcher("muestra.jsp");
            }
            dis.forward(request, response);
        } else {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<h1>Contraseña incorrecta</h1>");
            dis = request.getRequestDispatcher("index.jsp");
            dis.include(request, response);
        }
    }
}







