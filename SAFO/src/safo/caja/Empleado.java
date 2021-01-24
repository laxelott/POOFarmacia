/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.caja;

import java.sql.Time;
import safo.db.Conexion;
import safo.db.exceptions.WrongCredentialsException;

/**
 *
 * @author Laxelott
 */
public class Empleado {

    private String nombreEmpleado;
    private String usernameEmpleado;
    private int claveAcceso;
    private Time[] turno;

    public Empleado() {
    }

    public Empleado(String nombreEmpleado, String usernameEmpleado, int claveAcceso, Time[] turno) {
        this.nombreEmpleado = nombreEmpleado;
        this.usernameEmpleado = usernameEmpleado;
        this.claveAcceso = claveAcceso;
        this.turno = turno;
    }

    public Empleado(String username, int claveAcceso) throws WrongCredentialsException {
        login(username, claveAcceso);
    }

    public void login(String username, int claveAcceso) throws WrongCredentialsException {
        Empleado aux = Conexion.getDBEmpleado(username, claveAcceso);

        this.nombreEmpleado = aux.nombreEmpleado;
        this.usernameEmpleado = aux.usernameEmpleado;
        this.claveAcceso = aux.claveAcceso;
        this.turno = aux.turno;
    }

    public String getNombre() {
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
