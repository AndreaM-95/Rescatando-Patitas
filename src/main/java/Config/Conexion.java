package Config;

/**
 *
 * @author Z
 */
import java.sql.*;

/*
    En esta clase se realizara la conexion a base de datos
    Datos por default en Xampp
    user: root
    password: 
  
   Si necesitan saber que usuarios tienen pueden ir a 
   http://localhost/phpmyadmin/index.php?route=/server/privileges&viewing_mode=server
*/

public class Conexion {
    Connection con; //Creamos una variable de tipo Connection
    public Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver"); //Driver mysql
            con=DriverManager.getConnection("jdbc:mysql://db4free.net:3306/dbrescatandopati","useroot00","@Root123456789");            
        } catch (Exception e) {
            System.err.println("Error"+e); //Si existe un error, nos imprimira la causa.
        }
    }
    
    public Connection getConnection(){
        
        return con; 
    }
}
