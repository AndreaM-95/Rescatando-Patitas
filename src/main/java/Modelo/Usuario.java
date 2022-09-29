/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Z
 */
public class Usuario {
    
     int id_usuario;
     String identificacion_usuario;
     String nombre_usuario;
     String telefono_usuario;
     String direccion_usuario;
     String nombre_mascota_usuario;
     String numero_referencia;

    public Usuario() {
    }

    public Usuario(String identificacion_usuario, String nombre_usuario, String telefono_usuario, String direccion_usuario, String nombre_mascota_usuario, String numero_referencia) {
        this.identificacion_usuario = identificacion_usuario;
        this.nombre_usuario = nombre_usuario;
        this.telefono_usuario = telefono_usuario;
        this.direccion_usuario = direccion_usuario;
        this.nombre_mascota_usuario = nombre_mascota_usuario;
        this.numero_referencia = numero_referencia;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getIdentificacion_usuario() {
        return identificacion_usuario;
    }

    public void setIdentificacion_usuario(String identificacion_usuario) {
        this.identificacion_usuario = identificacion_usuario;
    }

    public String getNombre_usuario() {
        return nombre_usuario;
    }

    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    public String getTelefono_usuario() {
        return telefono_usuario;
    }

    public void setTelefono_usuario(String telefono_usuario) {
        this.telefono_usuario = telefono_usuario;
    }

    public String getDireccion_usuario() {
        return direccion_usuario;
    }

    public void setDireccion_usuario(String direccion_usuario) {
        this.direccion_usuario = direccion_usuario;
    }

    public String getNombre_mascota_usuario() {
        return nombre_mascota_usuario;
    }

    public void setNombre_mascota_usuario(String nombre_mascota_usuario) {
        this.nombre_mascota_usuario = nombre_mascota_usuario;
    }

    public String getNumero_referencia() {
        return numero_referencia;
    }

    public void setNumero_referencia(String numero_referencia) {
        this.numero_referencia = numero_referencia;
    }

    
    
}
