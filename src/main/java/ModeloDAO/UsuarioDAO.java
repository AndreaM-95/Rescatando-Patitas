/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Intefaces.CRUD_USER;
import Modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Z
 */
public class UsuarioDAO implements CRUD_USER {
     Conexion cn=new Conexion(); ////Hacemos instancia de la conexion, se encuentra en DBConnection.java
     Connection con; //Variable de Connection
     PreparedStatement ps; //Sentencia SQL precompilada para ser ejecutada muchas veces.
     ResultSet rs; //obtener los datos de columna correspondientes a un fila
     Usuario p = new Usuario(); //Instanciamos la clase Mascotas.java
//------------------------------------------------------------------------------ 

    @Override
    public List listarUser() {
 ArrayList<Usuario>list=new ArrayList<>();//Creamos un array con el objeto Mascotas 
        String sql="select * from usuarios"; //Variable String para hacer la consulta
        
        try {
            con=cn.getConnection(); //Clase instanciada = al metodo conexion
            ps=con.prepareStatement(sql); //Preparamos la consulta mediante la conexion
            rs=ps.executeQuery(); //Ejecutamos la consulta SQL "select * from persona"
            while(rs.next()){
                Usuario per=new Usuario();
                per.setId_usuario(rs.getInt("id_usuario"));
                per.setIdentificacion_usuario(rs.getString("identificacion_usuario"));
                per.setNombre_usuario(rs.getString("nombre_usuario"));
                per.setTelefono_usuario(rs.getString("telefono_usuario"));
                per.setDireccion_usuario(rs.getString("direccion_usuario"));
                per.setNombre_mascota_usuario(rs.getString("nombre_mascota_usuario"));
                per.setNumero_referencia(rs.getString("mascota_referencia"));
                
                //Añadimos los campos de la base de datos a la lista
                list.add(per);
            }
        } catch (Exception e) {
        }
        //Retornamos la lista
        return list; 
    }
    
//------------------------------------------------------------------------------    }

    @Override
    public Usuario listUser(int id) {
        String sql="select * from usuarios";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
    //Hacemos un recorrido con el fin de obtener todos los datos
            while(rs.next()){   
                
     //Hacemos referencia a los campos que estan en la base de datos tiene
                p.setId_usuario(rs.getInt("id_usuario"));
                p.setIdentificacion_usuario(rs.getString("identificacion_usuario"));
                p.setNombre_usuario(rs.getString("nombre_usuario"));
                p.setTelefono_usuario(rs.getString("telefono_usuario"));
                p.setDireccion_usuario(rs.getString("direccion_usuario"));
                p.setNombre_mascota_usuario(rs.getString("nombre_mascota_usuario"));
                p.setNumero_referencia(rs.getString("mascota_referencia"));
                
            }
        } catch (Exception e) {
        }
        return p;
    }
    
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------
    //Codigo para agregar Registros de la base de datos
    @Override
    public boolean addUser(Usuario per) {
    String sql = "insert into usuarios(identificacion_usuario,nombre_usuario,telefono_usuario,direccion_usuario,nombre_mascota_usuario,mascota_referencia)values('"+per.getIdentificacion_usuario()+"','"+per.getNombre_mascota_usuario()+"','"+per.getTelefono_usuario()+"','"+per.getDireccion_usuario()+"','"+per.getNombre_mascota_usuario()+"','"+per.getNumero_referencia()+"')";    
    try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }
    //--------------------------------------------------------------------------


    @Override
    public boolean editUser(Usuario per) {
    String sql="update usuarios set identificacion_usuario  ='"+per.getIdentificacion_usuario()+"',nombre_usuario='"+per.getNombre_usuario()+"',telefono_usuario='"+per.getTelefono_usuario()+"',direccion_usuario='"+per.getDireccion_usuario()+"',nombre_mascota_usuario='"+per.getNombre_mascota_usuario()+"',mascota_referencia='"+per.getNumero_referencia()+"'where id_usuario="+per.getId_usuario();        
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
    public boolean eliminarUser(int id) {
     //Con esta sentencia eliminamos el registro por el id    
        String sql="delete from usuarios where id_usuario  ="+id;
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
