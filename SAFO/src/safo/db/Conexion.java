/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.db;

import safo.db.exceptions.IdNotFoundException;
import safo.db.cDatos;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.AbstractMap.SimpleEntry;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import safo.Cliente;
import safo.caja.Empleado;
import safo.caja.Inventario;
import safo.caja.Producto;
import safo.db.exceptions.WrongCredentialsException;
import safo.salud.Consulta;
import safo.salud.Medico;
import safo.salud.Paciente;
import safo.salud.Receta;

/**
 *
 * @author Laxelott
 */
public class Conexion {

    /* Inserciones */
    public static int insertDBReceta(Receta receta) {
        ResultSet res;
        cDatos db = new cDatos();
        int limi;
        int id = -1;

        try {
            db.open();

            // Insertar el registro de receta
            db.setPreparedStatement("insert into recetas(saludable, id_consulta) values (?, ?)");
            db.setPreparedVariables(new SimpleEntry[]{
                new SimpleEntry("int", receta.getSaludable() ? 1 : 0),
                new SimpleEntry("int", receta.getConsulta().getId())
            });

            db.runPreparedUpdate();

            // Obtener la id de la receta que se acaba de recetar
            db.setPreparedStatement("select id from recetas where id_consulta = ?");
            db.setPreparedVariables(new SimpleEntry[]{
                new SimpleEntry("int", receta.getConsulta().getId())
            });

            res = db.runPreparedQuery();

            // Insertar cada medicamento recetado
            if (res.next()) {
                id = res.getInt("id");
                limi = receta.getMedicamentosRecetados().length;
                for (int i = 0; i < limi; ++i) {
                    db.setPreparedStatement("insert into medicamentos_recetados(id_receta, nombre_medicamento) values (?, ?)");
                    db.setPreparedVariables(new SimpleEntry[]{
                        new SimpleEntry("int", id),
                        new SimpleEntry("String", receta.getMedicamentosRecetados()[i])
                    });

                    db.runPreparedUpdate();
                }
            } else {
                System.out.println("Algo muy malo pasó...");
            }

            db.close();
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return id;
    }

    public static int insertDBConsulta(Consulta consulta) {
        ResultSet res;
        cDatos db = new cDatos();
        int id = -1;

        try {
            db.open();

            // Insertar el registro de consulta
            db.setPreparedStatement("insert into consultas(id_medico, id_paciente, fecha_hora, padecimiento) values (?, ?, ?, ?)");
            db.setPreparedVariables(new SimpleEntry[]{
                new SimpleEntry("int", consulta.getMedico().getId()),
                new SimpleEntry("int", consulta.getPaciente().getId()),
                new SimpleEntry("timestamp", consulta.getHora()),
                new SimpleEntry("string", consulta.getPadecimiento())
            });

            db.runPreparedUpdate();

            // Obtener la id de la consulta 
            db.setPreparedStatement("select id from consultas where "
                    + "id_medico = ? and "
                    + "id_paciente = ? and "
                    + "fecha_hora = ? and "
                    + "padecimiento = ?");
            db.setPreparedVariables(new SimpleEntry[]{
                new SimpleEntry("int", consulta.getMedico().getId()),
                new SimpleEntry("int", consulta.getPaciente().getId()),
                new SimpleEntry("timestamp", consulta.getHora()),
                new SimpleEntry("string", consulta.getPadecimiento())
            });

            res = db.runPreparedQuery();

            if (res.next()) {
                id = res.getInt("id");
            } else {
                System.out.println("No se insertó la receta que se acaba de insertar?");
            }

            db.close();
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return id;
    }

    /* Gets */
    public static Cliente getDBCliente(int id) throws IdNotFoundException {
        ResultSet res;
        Cliente cliente = new Cliente(-1, "inexistente", "no", 0);
        cDatos db = new cDatos();

        try {
            db.open();

            db.setPreparedStatement("select * from clientes where clientes.id = ?");
            db.setPreparedVariables(new SimpleEntry[]{
                new SimpleEntry("int", id)
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
            db.setPreparedVariables(new SimpleEntry[]{
                new SimpleEntry("int", id)
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
            db.setPreparedVariables(new SimpleEntry[]{
                new SimpleEntry("int", id)
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

            db.setPreparedStatement("SELECT * FROM alergias_pacientes"
                    + "	WHERE id = ?;");
            db.setPreparedVariables(new SimpleEntry[]{
                new SimpleEntry("int", idPaciente)
            });

            res = db.runPreparedQuery();

            while (res.next()) {
                alergias.add(res.getString("nombre"));
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

             // TODO crear view para esta consulta
            db.setPreparedStatement("SELECT inventario.id AS invID, inventario.cantidad, productos.id AS prodID, productos.nombre, productos.precio FROM inventario\n"
                    + "	INNER JOIN productos\n"
                    + "		ON inventario.id_producto = productos.id\n"
                    + "	WHERE productos.id = ?;");
            db.setPreparedVariables(new SimpleEntry[]{
                new SimpleEntry("int", id)
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
            db.setPreparedVariables(new SimpleEntry[]{
                new SimpleEntry("String", username),
                new SimpleEntry("int", password)
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
