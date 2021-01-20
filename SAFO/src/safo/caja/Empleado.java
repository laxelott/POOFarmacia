/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.caja;

import java.sql.Time;

/**
 *
 * @author Laxelott
 */
public class Empleado {

    private String nombreEmpleado;
    private String usernameEmpleado;
    private int claveAcceso;
    private Time[] turno;

    public Empleado(String nombreEmpleado, String usernameEmpleado, Time[] turno) {
        this.nombreEmpleado = nombreEmpleado;
        this.usernameEmpleado = usernameEmpleado;
        this.turno = turno;
    }

    public void login(int claveAcceso) {
        this.claveAcceso = claveAcceso;

        System.out.println("Iniciando sesión como " + this.usernameEmpleado
                + " con las credenciales: " + this.claveAcceso);
    }

    public String getNombreEmpleado() {
        return nombreEmpleado;
    }

    public void setNombreEmpleado(String nombreEmpleado) {
        this.nombreEmpleado = nombreEmpleado;
    }

    public String getUsernameEmpleado() {
        return usernameEmpleado;
    }

    public void setUsernameEmpleado(String usernameEmpleado) {
        this.usernameEmpleado = usernameEmpleado;
    }

    public Time[] getTurno() {
        return turno;
    }

    public void setTurno(Time[] turno) {
        this.turno = turno;
    }

}
