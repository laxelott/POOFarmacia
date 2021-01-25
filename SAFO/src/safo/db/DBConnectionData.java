/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo.db;

import java.io.Serializable;

/**
 *
 * @author Laxelott
 */
public class DBConnectionData implements Serializable {

    private int port;
    private String host;
    private String user;
    private String password;
    private String dbName;
    private String connArgs;

    @Override
    public String toString() {
        return "jdbc:mysql://" + this.host + ":" + this.port + "/" + this.dbName + "?" + this.connArgs;
    }

    public String getUrl() {
        return this.toString();
    }
    
    public String getConnArgs() {
        return connArgs;
    }

    public void setConnArgs(String connArgs) {
        this.connArgs = connArgs;
    }

    public int getPort() {
        return port;
    }

    public void setPort(int port) {
        this.port = port;
    }

    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDbName() {
        return dbName;
    }

    public void setDbName(String dbName) {
        this.dbName = dbName;
    }

}
