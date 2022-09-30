
package Config;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexionlogin{
    Connection con;
    public Connection getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3307/rescatandopatitasdb","root",""); 
        } catch(Exception e){
        }
        return con;
    }
}
