/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo;

import java.sql.Time;

/**
 *
 * @author Laxelott
 */
public class Inventario {

    // TODO Planear con todos
    
    /*
    Tipos de operaciones:
        0 -> Egreso
        1 -> Ingreso
     */
    private int idProducto;
    private int cantidadDeProducto;
    private int tipoOperacion;
    private Time fechaOperacion;

    public Inventario(Producto producto, int cantidadDeProductos) {
        this.idProducto = producto.getId();
        this.cantidadDeProducto = cantidadDeProductos;
    }

}
