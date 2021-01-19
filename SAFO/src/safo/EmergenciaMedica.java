/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo;

/**
 *
 * @author Laxelott
 */
public class EmergenciaMedica {

    private String tipo;
    private int numeroEmergencia = 911;

    public EmergenciaMedica(String tipo, Paciente paciente, Medico medico) {
        this.tipo = tipo;
        System.out.println(medico.getNombre() + " paniqueando con "
                + paciente.getNombre() + " por "
                + tipo);
    }

    public void marcar() {
        System.out.println("Marcando al " + numeroEmergencia);
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getNumeroEmergencia() {
        return numeroEmergencia;
    }

    public void setNumeroEmergencia(int numeroEmergencia) {
        this.numeroEmergencia = numeroEmergencia;
    }

}
