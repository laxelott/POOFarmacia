/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.db;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.AbstractMap.SimpleEntry;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;

/**
 *
 * @author laxelott
 */
public class cDatos {

    private boolean SQLite;
    private boolean preparedReady;
    private String driverClassName;
    private String SQLiteDbPath;
    private String connArgs;
    private Connection conn = null;
    private Statement estancia;
    private PreparedStatement prepared;
    DBConnectionData connData;

    public cDatos(DBConnectionData connData, String driverClassName, boolean SQLite, String SQLiteDbPath) {
        this.connData = connData;
        this.driverClassName = driverClassName;
        this.SQLite = SQLite;
        this.SQLiteDbPath = SQLiteDbPath;
    }

    public cDatos() {
        try {
            // Obtener datos de conexion externas
            this.connData = (DBConnectionData) JAXBContext.newInstance(DBConnectionData.class).createUnmarshaller().unmarshal(
                    new File("credenciales.xml")
            );
            this.connArgs = "useUnicode=true&characterEncoding=utf-8";

            // com.mysql.jdbc.Driver
            // org.sqlite.JDBC
            this.driverClassName = "com.mysql.jdbc.Driver";
            this.SQLite = false;
            this.preparedReady = false;
            this.SQLiteDbPath = "E:\\Escuela\\Programación\\Lib\\DB\\SmaF.db";
        } catch (JAXBException ex) {
            Logger.getLogger(cDatos.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //metodos para establecer los valores de conexion a la BD
    public void setConnData(DBConnectionData connData) {
        this.connData = connData;
    }

    public void setConn(Connection conn) {
        this.conn = conn;
    }

    public void setDriverClassName(String driverClassName) {
        this.driverClassName = driverClassName;
    }

    public void setSQLiteDatabasePath(String path) {
        this.SQLiteDbPath = path;
    }

    //Establecer si se usa MySQL o SQLite
    public void setMSQL() {
        this.SQLite = false;
    }

    public void setSQLite() {
        this.SQLite = true;
    }

    public boolean isSQLite() {
        return this.SQLite;
    }

    //Conexion a la BD
    public void open() throws SQLException {
        try {
            Class.forName(this.driverClassName).newInstance();
            if (this.SQLite) {
                this.conn = DriverManager.getConnection("jdbc:sqlite:" + this.SQLiteDbPath + "?useUnicode=true&characterEncoding=utf-8");
            } else {
                this.conn = DriverManager.getConnection(
                        "jdbc:mysql://" + connData.getHost() + ":" + connData.getPort() + "/" + connData.getDbName() + "?" + this.connArgs,
                        connData.getUser(),
                        connData.getPassword()
                );
            }
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException err) {
            Logger.getLogger(cDatos.class.getName()).log(Level.SEVERE, null, err);
        }
    }

    //Cerrar la conexion de BD
    public void close() throws SQLException {
        this.conn.close();
    }

    //Metodos para ejecutar sentencias SQL
    public ResultSet query(String consulta) throws SQLException {
        this.estancia = (Statement) conn.createStatement();
        return this.estancia.executeQuery(consulta);
    }

    public void update(String actualiza) throws SQLException {
        this.estancia = (Statement) conn.createStatement();
        estancia.executeUpdate(actualiza);
    }

    // Prepared Statements
    public void setPreparedStatement(String statement) throws SQLException {
        this.prepared = this.conn.prepareStatement(statement);
        this.preparedReady = false;
    }

    public void setPreparedVariables(SimpleEntry<String, Object>[] variables) throws SQLException {
        int n = variables.length;

        for (int i = 0; i < n; ++i) {
            switch (variables[i].getKey().toLowerCase()) {
                case "string":
                    this.prepared.setString(i + 1, (String) variables[i].getValue());
                    break;
                case "int":
                    this.prepared.setInt(i + 1, (Integer) variables[i].getValue());
                    break;
                case "bytes":
                    this.prepared.setBytes(i + 1, ((String) variables[i].getValue()).getBytes());
                    break;
                case "timestamp":
                    this.prepared.setTimestamp(i + 1, (Timestamp) variables[i].getValue());
                    break;
                default:
                    System.err.println("The parameter #" + (i + 1) + " did not have a defined type!");
            }

        }

        this.preparedReady = true;
    }

    public ResultSet runPreparedQuery() throws SQLException {
        checkPreparedReady();
        return this.prepared.executeQuery();
    }

    public void runPreparedUpdate() throws SQLException {
        checkPreparedReady();
        this.prepared.executeUpdate();
    }

    private void checkPreparedReady() {
        if (!preparedReady) {
            throw new RuntimeException("Prepared Statement not ready yet!");
        }
    }
}
