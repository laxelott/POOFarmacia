/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo;

import database.cDatos;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Laxelott
 */
public class ConexionDB {

    public static void registrarCliente(Cliente cliente) {
        cDatos db = new cDatos();

        try {
            db.open();

            db.setPreparedStatement("insert into clientes(nombre, RFC, edad) values (?, ?, ?);");
            db.setPreparedVariables(new String[][]{
                {"String", cliente.getNombre()},
                {"String", cliente.getRFC()},
                {"int", String.valueOf(cliente.getEdad())}
            });
            db.runPreparedUpdate();

            db.close();
        } catch (SQLException ex) {
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
