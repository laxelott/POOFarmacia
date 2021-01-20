/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.salud;

import safo.Cliente;

/**
 *
 * @author Laxelott
 */
public class Paciente extends Cliente {

    private short peso;
    private short estatura;
    private String[] alergias;

    public Paciente(int id, String nombre, String RFC, int edad, short peso, short estatura, String[] alergias) {
        super(id, nombre, RFC, edad);
        this.peso = peso;
        this.estatura = estatura;
        this.alergias = alergias;
    }
}
