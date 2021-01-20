/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.salud;

import safo.Cliente;
import safo.ServicioEspecial;
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

    public Receta recetar(Consulta consulta, Boolean saludable, Producto[] medicamentosRecetados) {
        return new Receta(consulta, saludable, medicamentosRecetados);
    }
    
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
