/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.salud;

import safo.Cliente;
import safo.caja.Producto;

/**
 *
 * @author Laxelott
 */
public class Medico {

    private int id;
    private String nombre;
    private String cedula;
    private int consultorio;

    /**
     * Genera una receta de la consulta
     * 
     * @param consulta La consulta a la cual pertenece la receta
     * @param saludable Si el paciente estuvo saludable o no
     * @param medicamentosRecetados Lista de medicamentos recetados
     * @return Receta firmada por el médico
     */
    public Receta recetar(Consulta consulta, Boolean saludable, Producto[] medicamentosRecetados) {
        return new Receta(consulta, saludable, medicamentosRecetados);
    }
    
    /**
     * 
     * @param paciente
     * @param padecimiento
     * @return 
     */
    public Consulta realizarConsulta(Paciente paciente, String padecimiento) {
        return new Consulta(this, paciente, padecimiento);
    }

    public void realizarSerivicioEspecial(ServicioEspecial servicio, Paciente paciente) {
        System.out.println("Realizando" + servicio.getTipo()
                + " a " + paciente.getNombre());
    }

    public Analisis expedirAnalisis(Cliente cliente, String analisis) {
        return new Analisis(cliente, analisis);

    }

    public Tratamiento expedirTratamiento(Cliente cliente, String instrucciones) {
        return new Tratamiento(cliente, this, instrucciones);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public int getConsultorio() {
        return consultorio;
    }

    public void setConsultorio(int consultorio) {
        this.consultorio = consultorio;
    }

}
