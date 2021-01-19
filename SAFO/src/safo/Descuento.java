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
public class Descuento {

    private Cliente cliente;
    private float descuento;
    private double gasto;

    public Descuento(Cliente cliente, float descuento, double gasto) {
        this.cliente = cliente;
        this.descuento = descuento;
        this.gasto = gasto;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public float getDescuento() {
        return descuento;
    }

    public void setDescuento(float descuento) {
        this.descuento = descuento;
    }

    public double getGasto() {
        return gasto;
    }

    public void setGasto(double gasto) {
        this.gasto = gasto;
    }

}
