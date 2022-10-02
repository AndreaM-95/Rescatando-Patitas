
package Modelo;

import Intefaces.validar;
import Config.Conexionlogin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class userDAO implements validar{
    Connection con;
    Conexionlogin cn = new Conexionlogin();
    PreparedStatement ps;
    ResultSet rs;
    
    
    @Override
    public int validar(user us) {
        int r=0;
        String sql="select * from login where usuario =?  and contraseña=?" ;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, us.getNom());
            ps.setString(2, us.getPass());
            rs=ps.executeQuery();
            while(rs.next()){
                r=r+1;
                us.setNom(rs.getString("usuario"));
                us.setPass(rs.getString("contraseña"));        
            }
        if(r==1){
            return 1;
        }else{
            return 0;
        }
    } catch (Exception e) {
        return 0;
        }
    }
    
    
}
