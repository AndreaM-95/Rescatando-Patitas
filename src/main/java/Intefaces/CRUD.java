/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Intefaces;


import Modelo.Mascota;
import java.util.List;
/**
 *
 * @author Z
 */

//Aqui en esta parte se pondra los metodos de las acciones del crud
//--Aun me falta agregar el metodo de buscar, aunque todavia no se como se hace
public interface CRUD {
    public List listar();
    public Mascota list(int id);
    public boolean add(Mascota per);
    public boolean edit(Mascota per);
    public boolean eliminar(int id);
}
