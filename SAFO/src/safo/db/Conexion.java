/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.db;

import safo.db.exceptions.IdNotFoundException;
import database.cDatos;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import safo.Cliente;
import safo.caja.Empleado;
import safo.caja.Inventario;
import safo.caja.Producto;
import safo.db.exceptions.WrongCredentialsException;
import safo.salud.Medico;
import safo.salud.Paciente;

/**
 *
 * @author Laxelott
 */
public class Conexion {

    public static Cliente getDBCliente(int id) throws IdNotFoundException {
        ResultSet res;
        Cliente cliente = new Cliente(-1, "inexistente", "no", 0);
        cDatos db = new cDatos();

        try {
            db.open();

            db.setPreparedStatement("select * from clientes where clientes.id = ?");
            db.setPreparedVariables(new String[][]{
                {"int", String.valueOf(id)}
            });

            res = db.runPreparedQuery();

            if (res.next()) {
                cliente = new Cliente(
                        res.getInt("id"),
                        res.getString("nombre"),
                        res.getString("rfc"),
                        res.getInt("edad")
                );
            } else {
                throw new IdNotFoundException("Id no existe!");
            }

            db.close();
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cliente;
    }

    public static Medico getDBMedico(int id) throws IdNotFoundException {
        ResultSet res;
        Medico medico = new Medico(1, "no-existe", "nope", -1, 0);
        cDatos db = new cDatos();

        try {
            db.open();

            db.setPreparedStatement("select * from medicos where medicos.id = ?");
            db.setPreparedVariables(new String[][]{
                {"int", String.valueOf(id)}
            });

            res = db.runPreparedQuery();

            if (res.next()) {
                medico = new Medico(res.getInt("id"), res.getString("nombre"), res.getString("cedula"), res.getInt("consultorio"), res.getInt("edad"));
            } else {
                throw new IdNotFoundException("Id no existe!");
            }

            db.close();
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return medico;
    }

    public static Paciente getDBPaciente(int id) throws IdNotFoundException {
        ResultSet res;
        Paciente paciente = new Paciente(1, "sin-nombre", "no", 0, (short) 0, (short) 0, new String[0]);
        cDatos db = new cDatos();

        try {
            db.open();

            db.setPreparedStatement("SELECT * FROM pacientes_datos"
                    + "	WHERE id = ?;");
            db.setPreparedVariables(new String[][]{
                {"int", String.valueOf(id)}
            });

            res = db.runPreparedQuery();

            if (res.next()) {
                paciente = new Paciente(
                        res.getInt("id"),
                        res.getString("nombre"),
                        res.getString("rfc"),
                        res.getInt("edad"),
                        res.getShort("peso"),
                        res.getShort("estatura"),
                        new String[0]
                );
            } else {
                throw new IdNotFoundException("Id no existe!");
            }

            db.close();
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return paciente;
    }

    public static String[] getDBAlergias(int idPaciente) {
        ResultSet res;
        ArrayList<String> alergias = new ArrayList();
        cDatos db = new cDatos();

        try {
            db.open();

            db.setPreparedStatement("SELECT * FROM alergias_paciente"
                    + "	WHERE id = ?;");
            db.setPreparedVariables(new String[][]{
                {"int", String.valueOf(idPaciente)}
            });

            res = db.runPreparedQuery();

            while (res.next()) {
                alergias.add(res.getString("alergia"));
            }

            db.close();
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return alergias.toArray(new String[0]);
    }

    public static Inventario getDBInventario(int id) throws IdNotFoundException {
        ResultSet res;
        Inventario inventario = new Inventario(-1, new Producto(-1, "inexistente", 0d), 0);
        cDatos db = new cDatos();

        try {
            db.open();

            db.setPreparedStatement("SELECT inventario.id AS invID, inventario.cantidad, productos.id AS prodID, productos.nombre, productos.precio FROM inventario\n"
                    + "	INNER JOIN productos\n"
                    + "		ON inventario.id_producto = productos.id\n"
                    + "	WHERE productos.id = ?;");
            db.setPreparedVariables(new String[][]{
                {"int", String.valueOf(id)}
            });

            res = db.runPreparedQuery();

            if (res.next()) {
                inventario = new Inventario(
                        res.getInt("invID"),
                        new Producto(
                                res.getInt("prodID"),
                                res.getString("nombre"),
                                res.getDouble("precio")
                        ),
                        res.getInt("cantidad")
                );
            } else {
                throw new IdNotFoundException("Id no existe!");
            }

            db.close();
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return inventario;
    }

    public static Empleado getDBEmpleado(String username, int password) throws WrongCredentialsException {
        Empleado empleado = new Empleado("sin-nombre", "no", password, new Time[0]);
        cDatos db = new cDatos();

        try {
            db.open();

            ResultSet res;

            db.setPreparedStatement("select * from empleados where empleados.username = ? and empleados.clave_acceso = ?");
            db.setPreparedVariables(new String[][]{
                {"String", username},
                {"int", String.valueOf(password)}
            });

            res = db.runPreparedQuery();

            if (res.next()) {
                empleado = new Empleado(res.getString("nombre"), res.getString("username"), res.getInt("clave_acceso"), new Time[0]);
            } else {
                throw new WrongCredentialsException("Credenciales incorrectas!");
            }

            db.close();
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return empleado;
    }

}
