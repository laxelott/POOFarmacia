/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.caja;

import java.sql.Time;
import java.util.HashMap;
import javafx.util.Pair;
import safo.db.Conexion;
import safo.db.exceptions.IdNotFoundException;

/**
 *
 * @author Laxelott
 */
public class Inventario {

    /*
    Tipos de operaciones:
        0 -> Egreso
        1 -> Ingreso
     */
    private int id;
    private Producto producto;
    private HashMap<Time, Pair<Integer, Integer>> operaciones;
    private int cantidadDeProducto;

    /**
     * Constructor que intenta obtener el inventario registrado con la id
     *
     * @param id Id a buscar
     * @throws IdNotFoundException Si no se encontró el inventario especificado
     */
    public Inventario(int id) throws IdNotFoundException {
        Inventario aux = Conexion.getDBInventario(id);
        this.id = aux.id;
        this.producto = aux.producto;
        this.cantidadDeProducto = aux.cantidadDeProducto;
    }

    public Inventario(int id, Producto producto, int cantidadDeProductos) {
        this.id = id;
        this.producto = producto;
        this.cantidadDeProducto = cantidadDeProductos;
    }

    /**
     * Registrar los movimientos hechos por el empleado especificado
     *
     * @param empleado Empleado que realizó el movimiento
     * @param cantidad La cantidad de productos movidos (negativo o positivo)
     */
    public void modificarInventario(Empleado empleado, int cantidad) {
        cantidadDeProducto += cantidad;
        Pair<Integer, Integer> datos;

        System.out.println(empleado.getNombre() + " modificó el inventario de " + producto.getNombre());

        datos = new Pair(cantidad > 0 ? 1 : 0, cantidad);
        operaciones.put(new Time(System.currentTimeMillis()), datos);

        // Registrar a BD
    }

}
