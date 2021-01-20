/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.salud;

/**
 *
 * @author Laxelott
 */
public class Resultado {

    private PacienteLab paciente;
    private String diagnostico;

    public Resultado(PacienteLab paciente, String diagnostico) {
        this.paciente = paciente;
        this.diagnostico = diagnostico;
    }

    public PacienteLab getPaciente() {
        return paciente;
    }

    public String getDiagnostico() {
        return diagnostico;
    }

}
