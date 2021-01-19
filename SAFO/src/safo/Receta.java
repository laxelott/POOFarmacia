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
public class Receta {

    private Cliente cliente;
    private Consulta consulta;
    private Boolean saludable;
    private Producto[] medicamentosRecetados;

    public Receta(Consulta consulta, Boolean saludable, Producto[] medicamentosRecetados) {
        this.consulta = consulta;
        this.saludable = saludable;
        this.medicamentosRecetados = medicamentosRecetados;
    }

    public Receta(Cliente cliente, Boolean saludable, Producto[] medicamentosRecetados) {
        this.cliente = cliente;
        this.saludable = saludable;
        this.medicamentosRecetados = medicamentosRecetados;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
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

    public Producto[] getMedicamentosRecetados() {
        return medicamentosRecetados;
    }

    public void setMedicamentosRecetados(Producto[] medicamentosRecetados) {
        this.medicamentosRecetados = medicamentosRecetados;
    }

}
