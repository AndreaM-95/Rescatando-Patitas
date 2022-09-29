/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Intefaces.CRUD;
import Modelo.Mascota;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MascotaDAO implements CRUD{ //Heredamos todos los metodos de la interface CRUD
    Conexion cn=new Conexion(); ////Hacemos instancia de la conexion, se encuentra en DBConnection.java
    Connection con; //Variable de Connection
    PreparedStatement ps; //Sentencia SQL precompilada para ser ejecutada muchas veces.
    ResultSet rs; //obtener los datos de columna correspondientes a un fila
    Mascota p = new Mascota(); //Instanciamos la clase Mascotas.java
//------------------------------------------------------------------------------ 
    
    //Estos metodos son de la clase CRUD.java (Clase interface)
    @Override
    public List listar() {
        
        ArrayList<Mascota>list=new ArrayList<>();//Creamos un array con el objeto Mascotas 
        String sql="select * from mascotas"; //Variable String para hacer la consulta
        
        try {
            con=cn.getConnection(); //Clase instanciada = al metodo conexion
            ps=con.prepareStatement(sql); //Preparamos la consulta mediante la conexion
            rs=ps.executeQuery(); //Ejecutamos la consulta SQL "select * from persona"
            while(rs.next()){
                Mascota per=new Mascota();
                per.setId(rs.getInt("id_mascota"));
                per.setNombre_mascota(rs.getString("nombre_mascota"));
                per.setDireccion_mascota(rs.getString("direccion_mascota"));
                per.setRaza_mascota(rs.getString("raza_mascota"));
                per.setEdad_mascota(rs.getString("edad_mascota"));
                
                //Añadimos los campos de la base de datos a la lista
                list.add(per);
            }
        } catch (Exception e) {
        }
        //Retornamos la lista
        return list; 
    }
    
//------------------------------------------------------------------------------
    @Override
    public Mascota list(int id) {
        String sql="select * from mascotas";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
    //Hacemos un recorrido con el fin de obtener todos los datos
            while(rs.next()){   
                
     //Hacemos referencia a los campos que estan en la base de datos tiene
                p.setId(rs.getInt("id_mascota"));
                p.setNombre_mascota(rs.getString("nombre_mascota"));
                p.setDireccion_mascota(rs.getString("direccion_mascota"));
                p.setRaza_mascota(rs.getString("raza_mascota"));
                p.setEdad_mascota(rs.getString("edad_mascota"));
                              
            }
        } catch (Exception e) {
        }
        return p;
    }
    
//--------------------------------------------------------------------------
    //Codigo para agregar Registros de la base de datos
    @Override
    public boolean add(Mascota per) {
    String sql = "insert into mascotas(nombre_mascota,direccion_mascota,raza_mascota,edad_mascota)values('"+per.getNombre_mascota()+"','"+per.getDireccion_mascota()+"','"+per.getRaza_mascota()+"','"+per.getEdad_mascota()+"')";        
    try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }
    
//--------------------------------------------------------------------------
    //Codigo para eliminar Registros de la base de datos
    @Override
    public boolean edit(Mascota per) {
        String sql="update mascotas set nombre_mascota ='"+per.getNombre_mascota()+"',direccion_mascota='"+per.getDireccion_mascota()+"',raza_mascota='"+per.getRaza_mascota()+"',edad_mascota='"+per.getEdad_mascota()+"'where id_mascota ="+per.getId();
        try {
            con=cn.getConnection(); //Preparamos la conexion
            ps=con.prepareStatement(sql); //Preparamos la consulta
            ps.executeUpdate(); //Ejecutamos la consulta y actualizamos
        } catch (Exception e) {
        }
        return false;
    }

//--------------------------------------------------------------------------
    //Codigo para eliminar Registros de la base de datos
    @Override
    public boolean eliminar(int id) {
    //Con esta sentencia eliminamos el registro por el id    
        String sql="delete from mascotas where id_mascota ="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
//--------------------------------------------------------------------------
   
}
