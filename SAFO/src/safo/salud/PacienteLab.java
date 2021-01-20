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
public class PacienteLab extends Cliente {

    // TODO Verificar si debemos de guardar en BD
    private Resultado[] historial;

    public PacienteLab(int id, String nombre, String RFC, int edad, Resultado[] historial) {
        super(id, nombre, RFC, edad);
        this.historial = historial;
    }
}
