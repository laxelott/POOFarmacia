/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo;

import java.util.ArrayList;

/**
 *
 * @author Laxelott
 */
public class Analisis {

    private Cliente cliente;
    private String tipoAnalisis;
    private ArrayList<String> muestrasRequeridas;

    public Analisis(Cliente cliente, String tipoAnalisis) {
        this.cliente = cliente;
        this.tipoAnalisis = tipoAnalisis;
    }

    public Analisis(Cliente cliente, String tipoAnalisis, ArrayList<String> muestrasRequeridas) {
        this.cliente = cliente;
        this.tipoAnalisis = tipoAnalisis;
        this.muestrasRequeridas = muestrasRequeridas;
    }
    
    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public String getTipoAnalisis() {
        return tipoAnalisis;
    }

    public void setTipoAnalisis(String tipoAnalisis) {
        this.tipoAnalisis = tipoAnalisis;
    }

    public ArrayList<String> getMuestrasRequeridas() {
        return muestrasRequeridas;
    }

    public void addMuestra(String muestra) {
        this.muestrasRequeridas.add(muestra);
    }

}
