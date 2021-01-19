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
public class Laboratorista {

    private String usuarioLab;
    private int passwordLab;

    public void login(int passwordLab) {
        this.passwordLab = passwordLab;

        System.out.println("Iniciando sesión como " + this.usuarioLab
                + " con las credenciales: " + this.passwordLab);
    }

    public Resultado procesarAnalisis(Analisis analisis, String diagnostico) {
        return new Resultado((PacienteLab) analisis.getCliente(), diagnostico);
    }

    public Analisis generarAnalisis(PacienteLab paciente, String tipoAnalisis) {
        return new Analisis(paciente, tipoAnalisis);
    }

}
