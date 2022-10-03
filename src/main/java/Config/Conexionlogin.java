
package Config;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexionlogin{
    Connection con;
    public Connection getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://db4free.net:3306/dbrescatandopati","useroot00","@Root123456789");            
        } catch(Exception e){
        }
        return con;
    }
}
