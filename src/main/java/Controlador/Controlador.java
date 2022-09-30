/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;


import Modelo.Mascota;
import ModeloDAO.MascotaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Controlador extends HttpServlet {
    
//------------------------------------------------------------------------------      
    //Hacemos referencia a los jsp que vamos a ir, se queremos ir a cierto jps
    //tenemos que crear la variable e indicar la ruta del archivo
      
    String listar="vistas/listar.jsp";
    String index = "index.jsp";
    String aviso = "pop/index.html";
    String add="vistas/add.jsp";
    String addMascota="dar-adopcion.jsp";      
    String edit="vistas/edit.jsp";
//------------------------------------------------------------------------------      

    Mascota p = new Mascota(); //Instanciamos la clase Mascotas que esta en Mascotas.java
    MascotaDAO dao = new MascotaDAO(); //Instanciamos la clase PersonaDAO que esta en ModeloDAO.java   
    int id; //Hacemos referencia a nuestro Id
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
//------------------------------------------------------------------------------      
   /*doGet sirvePara responder al cliente, el método doGet utiliza un Writer del objeto HttpServletResponse 
    para devolver datos en formato texto al cliente
    */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String acceso="";
        
     /*
      Esta variable recibira el valor que se genera cuando el usuario presione el boton
      en el html, en el cual los referenciamos name="accion"
     */
        String action=request.getParameter("accion");
        
        
     /*
         Si accion es igual al valor que nos trae, eso hace referencia a listar.jsp entonces
         el acceso sera igual a listar que hace referencia a String listar="vistasCrud/listar.jsp";
         lo creamos arriba, al comienzo de la clase
        
        
     */
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;            
        }else if(action.equalsIgnoreCase("add")){
            acceso=add;
        }
        
        /*
        Ejemplo, la accion = name="accion"|| recibe "Agregar" hace referencia a 
        value="Agregar"        
        */
       
        //Boton agregar dentro del crud
        else if(action.equalsIgnoreCase("Agregar")){
            String nombre_mascota=request.getParameter("txt_nombre_mascota");
            String direccion_mascota =request.getParameter("txt_direccion_mascota");
            String raza_mascota=request.getParameter("txt_Raza_mascota");
            String edad_mascota = request.getParameter("txt_edad_mascota");

            p.setNombre_mascota(nombre_mascota);
            p.setDireccion_mascota(direccion_mascota);
            p.setRaza_mascota(raza_mascota);
            p.setEdad_mascota(edad_mascota);
          
            dao.add(p); //La operacion es agregar
            acceso=listar;
        }
        
        
        else if(action.equalsIgnoreCase("editar")){
            
            //Envia un valor capturado de la fila
            request.setAttribute("idper",request.getParameter("id"));
            acceso=edit; //La operacion es editar || edit es edit.jsp
        }
        
        //Si se presiona en el boton Actualizar ejecutara esta accion
        else if(action.equalsIgnoreCase("Actualizar")){
            
            //Va a capturar todos los datos que seleccionamos
            id=Integer.parseInt(request.getParameter("txtid"));
            String nombre_mascota=request.getParameter("txt_nombre_mascota");
            String direccion_mascota =request.getParameter("txt_direccion_mascota");
            String raza_mascota=request.getParameter("txt_Raza_mascota");
            String edad_mascota = request.getParameter("txt_edad_mascota");
            
            //Una vez capturados los enviara nuevamente al formulario, para poder actualizar los datos
            p.setId(id);
            p.setNombre_mascota(nombre_mascota);
            p.setDireccion_mascota(direccion_mascota);
            p.setRaza_mascota(raza_mascota);
            p.setEdad_mascota(edad_mascota);        
            dao.edit(p); //Va a guardar
            acceso=listar; //Cuando actualice nos enviara a listar.jsp
        }
        
        //Si la accion es eliminar
        else if(action.equalsIgnoreCase("eliminar")){
            //Capturamos el id
            id=Integer.parseInt(request.getParameter("id"));
            //Enviamos el parametro del id
            p.setId(id);
            dao.eliminar(id); //La operacion es eliminar persona por id
            //acceso=listar; //Cuaando nos elimina nos enviara a la lista
        }
        
        
     
       //Este codigo hace la funcion de dar-adoptar, cuando registre la mascota, le aparece un mensaje
       //El cual le dira que la mascota fue registrada
        else if(action.equalsIgnoreCase("Agregar2")){
            String nombre_mascota=request.getParameter("txt_nombre_mascota");
            String direccion_mascota =request.getParameter("txt_direccion_mascota");
            String raza_mascota=request.getParameter("txt_Raza_mascota");
            String edad_mascota = request.getParameter("txt_edad_mascota");

            p.setNombre_mascota(nombre_mascota);
            p.setDireccion_mascota(direccion_mascota);
            p.setRaza_mascota(raza_mascota);
            p.setEdad_mascota(edad_mascota);
          
           dao.add(p); //La operacion es añadir
           //acceso=listar; //Este envia al listar del crud
        }
       
        
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    
    public void show() {
		
		
	}

}
