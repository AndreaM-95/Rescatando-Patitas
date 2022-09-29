/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Z
 */
public class Mascota {
    int id;
    String nombre_mascota;
    String direccion_mascota;
    String raza_mascota;
    String edad_mascota;

    public Mascota() {
    }

    public Mascota(String nombre_mascota, String direccion_mascota, String raza_mascota, String edad_mascota) {
        this.nombre_mascota = nombre_mascota;
        this.direccion_mascota = direccion_mascota;
        this.raza_mascota = raza_mascota;
        this.edad_mascota = edad_mascota;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre_mascota() {
        return nombre_mascota;
    }

    public void setNombre_mascota(String nombre_mascota) {
        this.nombre_mascota = nombre_mascota;
    }

    public String getDireccion_mascota() {
        return direccion_mascota;
    }

    public void setDireccion_mascota(String direccion_mascota) {
        this.direccion_mascota = direccion_mascota;
    }

    public String getRaza_mascota() {
        return raza_mascota;
    }

    public void setRaza_mascota(String raza_mascota) {
        this.raza_mascota = raza_mascota;
    }

    public String getEdad_mascota() {
        return edad_mascota;
    }

    public void setEdad_mascota(String edad_mascota) {
        this.edad_mascota = edad_mascota;
    }

 
    
    
}
