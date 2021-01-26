/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.db.exceptions;

/**
 * Si la id buscada no se encontró
 *
 * @author Laxelott
 */
public class IdNotFoundException extends Exception {

    public IdNotFoundException(String message) {
        super(message);
    }
}
