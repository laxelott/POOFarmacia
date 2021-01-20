/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.caja;

import java.sql.Time;
import java.util.HashMap;
import javafx.util.Pair;

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
    private Producto producto;
    private HashMap<Time, Pair<Integer, Integer>> operaciones;
    private int cantidadDeProducto;

    public Inventario(Producto producto, int cantidadDeProductos) {
        this.producto = producto;
        this.cantidadDeProducto = cantidadDeProductos;

        // TODO Obtener el registro de la BD
        operaciones = new HashMap();

        // Registrar en BD
    }

    public void modificarInventario(Empleado empleado, int cantidad) {
        cantidadDeProducto += cantidad;
        Pair<Integer, Integer> datos;
        
        System.out.println(empleado.getNombreEmpleado() + " modificó el inventario de " + producto.getNombre());

        datos = new Pair(cantidad > 0 ? 1 : 0, cantidad);
        operaciones.put(new Time(System.currentTimeMillis()), datos);
        
        // Registrar a BD
    }

}
