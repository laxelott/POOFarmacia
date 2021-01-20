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
public class Tratamiento {

    private Cliente cliente;
    private Medico medico;
    private String instrucciones;

    public Tratamiento(Cliente cliente, Medico medico, String instrucciones) {
        this.cliente = cliente;
        this.medico = medico;
        this.instrucciones = instrucciones;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Medico getMedico() {
        return medico;
    }

    public void setMedico(Medico medico) {
        this.medico = medico;
    }

    public String getInstrucciones() {
        return instrucciones;
    }

    public void setInstrucciones(String instrucciones) {
        this.instrucciones = instrucciones;
    }

}
