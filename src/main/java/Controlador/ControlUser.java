 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Mascota;
import Modelo.Usuario;
import ModeloDAO.MascotaDAO;
import ModeloDAO.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Z
 */
public class ControlUser extends HttpServlet {

   //------------------------------------------------------------------------------      
    //Hacemos referencia a los jsp que vamos a ir, se queremos ir a cierto jps
    //tenemos que crear la variable e indicar la ruta del archivo
      
    String listar="vistas/listar.jsp";
    String index = "index.jsp";
    String aviso = "pop/index.html";
    String add="vistasUser/addUser.jsp";
    String addUsuario="adoptar.jsp";      
    String edit="vistasUser/editUser.jsp";
//------------------------------------------------------------------------------      

    Usuario p = new Usuario(); //Instanciamos la clase Mascotas que esta en Mascotas.java
    UsuarioDAO dao = new UsuarioDAO(); //Instanciamos la clase PersonaDAO que esta en ModeloDAO.java   
    int id; //Hacemos referencia a nuestro Id
    
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControlUser</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControlUser at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
     
        
     String acceso2 ="";
        
     /*
      Esta variable recibira el valor que se genera cuando el usuario presione el boton
      en el html, en el cual los referenciamos name="accion"
     */
        String action2 =request.getParameter("accion2");
        
        
     /*
         Si accion es igual al valor que nos trae, eso hace referencia a listar.jsp entonces
         el acceso sera igual a listar que hace referencia a String listar="vistasCrud/listar.jsp";
         lo creamos arriba, al comienzo de la clase
        
        
     */
        if(action2.equalsIgnoreCase("listar")){
            acceso2=listar;            
        }else if(action2.equalsIgnoreCase("add")){
            acceso2=add;
        }
        
        /*
        Ejemplo, la accion = name="accion"|| recibe "Agregar" hace referencia a 
        value="Agregar"        
        */
        //Boton agregar dentro del crud
        else if(action2.equalsIgnoreCase("Agregar")){
            String identificacion_usuario = request.getParameter("txt_identificacion_usuario");
            String nombre_usuario = request.getParameter("txt_nombre_usuario");
            String telefono_usuario = request.getParameter("txt_telefono_usuario");
            String direccion_usuario = request.getParameter("txt_direccion_usuario");
            String mascota_usuario = request.getParameter("txt_mascota_usuario");
            String mascota_referencia_usuario = request.getParameter("txt_mascota_referencia_usuario");

            p.setIdentificacion_usuario(identificacion_usuario);
            p.setNombre_usuario(nombre_usuario);
            p.setTelefono_usuario(telefono_usuario);
            p.setDireccion_usuario(direccion_usuario);
            p.setNombre_mascota_usuario(mascota_usuario);
            p.setNumero_referencia(mascota_referencia_usuario);          
            dao.addUser(p); //La operacion es agregar
            acceso2=listar; 
        }
        
        
        else if(action2.equalsIgnoreCase("editar")){
            
            //Envia un valor capturado de la fila
            request.setAttribute("idper",request.getParameter("id"));
            acceso2=edit; //La operacion es editar || edit es edit.jsp
        }
        
        //Si se presiona en el boton Actualizar ejecutara esta accion
        else if(action2.equalsIgnoreCase("Actualizar")){
            
            //Va a capturar todos los datos que seleccionamos
            id=Integer.parseInt(request.getParameter("txtid"));
            String identificacion_usuario = request.getParameter("txt_identificacion_usuario");
            String nombre_usuario = request.getParameter("txt_nombre_usuario");
            String telefono_usuario = request.getParameter("txt_telefono_usuario");
            String direccion_usuario = request.getParameter("txt_direccion_usuario");
            String mascota_usuario = request.getParameter("txt_mascota_usuario");
            String mascota_referencia_usuario = request.getParameter("txt_mascota_referencia_usuario");
            
            //Una vez capturados los enviara nuevamente al formulario, para poder actualizar los datos
            p.setId_usuario(id);
            p.setIdentificacion_usuario(identificacion_usuario);
            p.setNombre_usuario(nombre_usuario);
            p.setTelefono_usuario(telefono_usuario);
            p.setDireccion_usuario(direccion_usuario);   
            p.setNombre_mascota_usuario(mascota_usuario); 
            p.setNumero_referencia(mascota_referencia_usuario); 
            dao.editUser(p); //Va a guardar
            acceso2=listar; //Cuando actualice nos enviara a listar.jsp
        }
        
        //Si la accion es eliminar
        else if(action2.equalsIgnoreCase("eliminar")){
            //Capturamos el id
            id=Integer.parseInt(request.getParameter("id"));
            //Enviamos el parametro del id
            p.setId_usuario(id);
            dao.eliminarUser(id); //La operacion es eliminar persona por id
            acceso2=listar; //Cuaando nos elimina nos enviara a la lista
        }
        
        
     
       //Este codigo hace la funcion de dar-adoptar, cuando registre la mascota, le aparece un mensaje
       //El cual le dira que la mascota fue registrada
        else if(action2.equalsIgnoreCase("Agregar2")){
            String identificacion_usuario = request.getParameter("txt_identificacion_usuario");
            String nombre_usuario = request.getParameter("txt_nombre_usuario");
            String telefono_usuario = request.getParameter("txt_telefono_usuario");
            String direccion_usuario = request.getParameter("txt_direccion_usuario");
            String mascota_usuario = request.getParameter("txt_mascota_usuario");
            String mascota_referencia_usuario = request.getParameter("txt_mascota_referencia_usuario");
            
            //Una vez capturados los enviara nuevamente al formulario, para poder actualizar los datos        
            p.setIdentificacion_usuario(identificacion_usuario);
            p.setNombre_usuario(nombre_usuario);
            p.setTelefono_usuario(telefono_usuario);
            p.setDireccion_usuario(direccion_usuario);   
            p.setNombre_mascota_usuario(mascota_usuario); 
            p.setNumero_referencia(mascota_referencia_usuario); 
          
           dao.addUser(p); //La operacion es añadir
           acceso2=listar; //Envio a la lista del crud
        }
       
        
        RequestDispatcher vista=request.getRequestDispatcher(acceso2);
        vista.forward(request, response);
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
