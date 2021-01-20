/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo;

import safo.caja.Mostrador;

/**
 *
 * @author Laxelott
 */
public class Cliente {

    private int id;
    private String nombre;
    private String RFC;
    private int edad;
    
    public Cliente(int id, String nombre, String RFC, int edad) {
        this.id = id;
        this.nombre = nombre;
        this.RFC = RFC;
        this.edad = edad;
    }
    
    public void mirar(Mostrador mostrador) {
        System.out.println("Mirando 0-0...");
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRFC() {
        return RFC;
    }

    public void setRFC(String RFC) {
        this.RFC = RFC;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }
    
    
}
