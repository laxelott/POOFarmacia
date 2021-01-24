/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.salud;

import java.sql.Timestamp;
import safo.db.Conexion;

/**
 *
 * @author Laxelott
 */
public class Consulta {
    private int id;
    private Medico medico;
    private Paciente paciente;
    private Timestamp  hora;
    private String padecimiento;

    public Consulta(Medico medico, Paciente paciente, String padecimiento) {
        this.medico = medico;
        this.paciente = paciente;
        this.padecimiento = padecimiento;
        this.hora = new Timestamp(System.currentTimeMillis());
        this.id = Conexion.insertDBConsulta(this);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public Medico getMedico() {
        return medico;
    }

    public void setMedico(Medico medico) {
        this.medico = medico;
    }

    public Paciente getPaciente() {
        return paciente;
    }

    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }

    public Timestamp getHora() {
        return hora;
    }

    public void setHora(Timestamp hora) {
        this.hora = hora;
    }

    public String getPadecimiento() {
        return padecimiento;
    }

    public void setPadecimiento(String padecimiento) {
        this.padecimiento = padecimiento;
    }
    
    
    
}
