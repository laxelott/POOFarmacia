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
public class Mostrador {

    private Producto[] productos;

    public Mostrador() {
    }

    public void mostrar(Producto[] productos) {
        int limi = productos.length;

        for (int i = 0; i < limi; ++i) {
            System.out.println("Ven a comprar " + productos[i].getNombre() + "!");
        }
    }

}
