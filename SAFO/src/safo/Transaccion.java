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
public interface Transaccion {
    
    public void compra(Receta receta, Producto producto, Descuento descuento);
    public void compra(Receta receta, Producto producto);
    
}
