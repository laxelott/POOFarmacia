/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.caja;

import safo.Cliente;
import safo.salud.Receta;
import safo.Transaccion;

/**
 *
 * @author Laxelott
 */
public class Caja implements Transaccion {

    private double corteCaja;
    private double egresos;
    private double ingresos;
    private Empleado encargado;
    
    @Override
    public void compra(Receta receta, Producto producto, Descuento descuento) {
        if (descuento.getCliente().getId() == receta.getConsulta().getPaciente().getId()) {
            System.out.println(encargado.getNombre() + "Surtió "
                    + producto.getNombre() + " a "
                    + receta.getConsulta().getPaciente().getNombre() + " por $"
                    + producto.getPrecio() * (1 - descuento.getDescuento()) + ", autorizado por "
                    + receta.getConsulta().getMedico().getNombre());
        } else {
            System.out.println("Descuento no válido con cliente");
        }
    }

    @Override
    public void compra(Receta receta, Producto producto) {
        // Se aplica un descuento del 0%
        Descuento descuentoNulo = new Descuento(receta.getConsulta().getPaciente(), 0f, producto.getPrecio());
        this.compra(receta, producto, descuentoNulo);
    }

    public Descuento generarDescuento(Cliente cliente, float descuento) {
        return new Descuento(cliente, descuento, 0d);
    }

    public void setEncargado(Empleado encargado) {
        this.encargado = encargado;
    }

}
