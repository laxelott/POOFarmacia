/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.salud;

import java.util.ArrayList;

/**
 *
 * @author Laxelott
 */
public class Expediente {

    private Paciente paciente;
    private int folio;
    private int consultorio;
    private ArrayList<Consulta> historial;

    public Expediente(Paciente paciente, int folio, int consultorio) {
        this.paciente = paciente;
        this.folio = folio;
        this.consultorio = consultorio;
        
        // Obtener historial de la BD
    }

    
    
    public void registrarConsulta(Consulta consulta) {
        historial.add(consulta);
        
        // Actualizar la BD
    }
    
    public Paciente getPaciente() {
        return paciente;
    }

    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }

    public int getFolio() {
        return folio;
    }

    public void setFolio(int folio) {
        this.folio = folio;
    }

    public int getConsultorio() {
        return consultorio;
    }

    public void setConsultorio(int consultorio) {
        this.consultorio = consultorio;
    }

    public ArrayList<Consulta> getHistorial() {
        return historial;
    }

    public void setHistorial(ArrayList<Consulta> historial) {
        this.historial = historial;
    }

}
