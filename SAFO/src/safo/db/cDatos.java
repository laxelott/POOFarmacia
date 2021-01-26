/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.db;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.AbstractMap.SimpleEntry;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Clase auxiliar para conectarse e interactuar con la base de datos
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

    /**
     * Lee la configuración del archivo 'safo.config'
     */
    public cDatos() {
        try (InputStream input = new FileInputStream("safo.config")) {
            Properties prop = new Properties();
            this.connData = new DBConnectionData();

            prop.load(input);

            this.connData.setHost(prop.getProperty("db.url"));
            this.connData.setUser(prop.getProperty("db.user"));
            this.connData.setPort(Integer.parseInt(prop.getProperty("db.port")));
            this.connData.setPassword(prop.getProperty("db.password"));
            this.connData.setDbName(prop.getProperty("db.name"));
            this.connData.setConnArgs("useUnicode=true&characterEncoding=utf-8");

        } catch (IOException ex) {
            Logger.getLogger(cDatos.class.getName()).log(Level.SEVERE, null, ex);
        }

        // com.mysql.cj.jdbc.Driver
        // org.sqlite.JDBC
        this.driverClassName = "com.mysql.cj.jdbc.Driver";
        this.SQLite = false;
        this.preparedReady = false;
        this.SQLiteDbPath = "E:\\Escuela\\Programación\\Lib\\DB\\SmaF.db";
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
    /**
     * Abre la conexión a la Base de Datos
     *
     * @throws SQLException Si ocurrió algún error al abrir la Base de Datos
     */
    public void open() throws SQLException {
        try {
            Class.forName(this.driverClassName).newInstance();
            if (this.SQLite) {
                this.conn = DriverManager.getConnection("jdbc:sqlite:" + this.SQLiteDbPath + "?useUnicode=true&characterEncoding=utf-8");
            } else {
                this.conn = DriverManager.getConnection(
                        connData.getUrl(),
                        connData.getUser(),
                        connData.getPassword()
                );
            }
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(cDatos.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //Cerrar la conexion de BD
    /**
     * Cierra la conexión a la Base de Datos
     *
     * @throws SQLException Si ocurrió algún error al cerrar la Base de Datos
     */
    public void close() throws SQLException {
        this.conn.close();
    }

    //Metodos para ejecutar sentencias SQL
    /**
     * Realizar una consulta a la Base de Datos
     *
     * @param consulta Consulta a realizar
     * @return Conjunto de los resultados de la consulta
     * @throws SQLException Si ocurrió algún error al consultar la Base de Datos
     */
    public ResultSet query(String consulta) throws SQLException {
        this.estancia = (Statement) conn.createStatement();
        return this.estancia.executeQuery(consulta);
    }

    /**
     * Realizar una actualización a la Base de Datos (Sin datos de regreso)
     *
     * @param actualiza Actualización a realizar
     * @throws SQLException Si ocurrió algún error al actualizar la Base de
     * Datos
     */
    public void update(String actualiza) throws SQLException {
        this.estancia = (Statement) conn.createStatement();
        estancia.executeUpdate(actualiza);
    }

    // Prepared Statements
    /**
     * Establece el Prepared Statement que se realizará a la Base de Datos
     *
     * @param statement El comando a realizar
     * @throws SQLException Si ocurrió algún error al establecer el comando
     */
    public void setPreparedStatement(String statement) throws SQLException {
        this.prepared = this.conn.prepareStatement(statement);
        this.preparedReady = false;
    }

    /**
     * Establece las variables a usar en el Prepared Statement
     *
     * @param variables Un arreglo de simple entry, el primer elemento tiene que
     * ser uno de los siguientes (sin importar mayúsculas o minúsculas): -
     * string: Para insertar un String - int: Para insertar un numero - bytes:
     * Para insertar un blob - timestamp: Para insertar un datetime
     * @throws SQLException Si ocurrió algún error al establecer las variables
     */
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

    /**
     * Realizar una consulta a la Base de Datos mediante el Prepared Statement
     *
     * @return Conjunto de los resultados de la consulta
     * @throws SQLException Si ocurrió algún error al consultar la Base de Datos
     */
    public ResultSet runPreparedQuery() throws SQLException {
        checkPreparedReady();
        return this.prepared.executeQuery();
    }

    /**
     * Realizar una actualización a la Base de Datos mediante el Prepared
     * Statement (Sin datos de regreso)
     *
     * @throws SQLException Si ocurrió algún error al actualizar la Base de
     * Datos
     */
    public void runPreparedUpdate() throws SQLException {
        checkPreparedReady();
        this.prepared.executeUpdate();
    }

    /**
     * Checa si esta listo el Prepared Statement
     */
    private void checkPreparedReady() {
        if (!preparedReady) {
            throw new RuntimeException("Prepared Statement not ready yet!");
        }
    }
}
