/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo;

import safo.caja.Mostrador;
import safo.db.Conexion;
import safo.db.exceptions.IdNotFoundException;

/**
 *
 * @author Laxelott
 */
public class Cliente {

    private int id;
    private String nombre;
    private String rfc;
    private int edad;

    public Cliente() {
    }

    /**
     * Obtiene el cliente de la Base de Datos
     *
     * @param id ID del cliente a obtener
     * @throws IdNotFoundException Si no se encontró el cliente
     */
    public Cliente(int id) throws IdNotFoundException {
        Cliente aux = Conexion.getDBCliente(id);

        this.id = aux.id;
        this.nombre = aux.nombre;
        this.rfc = aux.rfc;
        this.edad = aux.edad;
    }

    public Cliente(int id, String nombre, String RFC, int edad) {
        this.id = id;
        this.nombre = nombre;
        this.rfc = RFC;
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
        return rfc;
    }

    public void setRFC(String RFC) {
        this.rfc = RFC;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

}
