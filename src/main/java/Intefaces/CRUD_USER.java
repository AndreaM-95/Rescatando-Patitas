/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Intefaces;

import Modelo.Mascota;
import Modelo.Usuario;
import java.util.List;

/**
 *
 * @author Z
 */
public interface CRUD_USER {
       
    public List listarUser();
    public Usuario listUser(int id);
    public boolean addUser(Usuario per);
    public boolean editUser(Usuario per);
    public boolean eliminarUser(int id);
    
}
