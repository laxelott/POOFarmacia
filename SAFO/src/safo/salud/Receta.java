/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.salud;

import safo.db.Conexion;

/**
 *
 * @author Laxelott
 */
public class Receta {

    private Consulta consulta;
    private Boolean saludable;
    private String[] medicamentosRecetados;

    public Receta(Consulta consulta, Boolean saludable, String[] medicamentosRecetados) {
        this.consulta = consulta;
        this.saludable = saludable;
        this.medicamentosRecetados = medicamentosRecetados;
    }

    /**
     * Registra la receta en la Base de Datos
     */
    public void registrar() {
        Conexion.insertDBReceta(this);
    }

    public Consulta getConsulta() {
        return consulta;
    }

    public void setConsulta(Consulta consulta) {
        this.consulta = consulta;
    }

    public Boolean getSaludable() {
        return saludable;
    }

    public void setSaludable(Boolean saludable) {
        this.saludable = saludable;
    }

    public String[] getMedicamentosRecetados() {
        return medicamentosRecetados;
    }

    public void setMedicamentosRecetados(String[] medicamentosRecetados) {
        this.medicamentosRecetados = medicamentosRecetados;
    }

}
