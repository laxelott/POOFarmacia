/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.salud;

import safo.Cliente;
import safo.db.Conexion;
import safo.db.exceptions.IdNotFoundException;

/**
 *
 * @author Laxelott
 */
public class Paciente extends Cliente {

    private short peso;
    private short estatura;
    private String[] alergias;

    public Paciente(int id) throws IdNotFoundException {
        Paciente aux = Conexion.getDBPaciente(id);
        this.setId(aux.getId());
        this.setNombre(aux.getNombre());
        this.setEdad(aux.getEdad());
        this.setRFC(aux.getRFC());
        this.estatura = aux.estatura;
        this.peso = aux.peso;
        this.alergias = Conexion.getDBAlergias(id);
    }

    public Paciente(int id, String nombre, String RFC, int edad, short peso, short estatura, String[] alergias) {
        super(id, nombre, RFC, edad);
        this.peso = peso;
        this.estatura = estatura;
        this.alergias = alergias;
    }

    public short getPeso() {
        return peso;
    }

    public void setPeso(short peso) {
        this.peso = peso;
    }

    public short getEstatura() {
        return estatura;
    }

    public void setEstatura(short estatura) {
        this.estatura = estatura;
    }

    public String[] getAlergias() {
        return alergias;
    }

    public void setAlergias(String[] alergias) {
        this.alergias = alergias;
    }
    
    

}
