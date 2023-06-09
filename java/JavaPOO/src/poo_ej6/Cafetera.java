/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_ej6;

/**
 *
 * @author matias
 */
public class Cafetera {
    private int capacidadMaxima;
    private int cantidadActual;
    
    public void llenarCafetera() {
        cantidadActual = capacidadMaxima;
    }
    
    public void servirTaza(int tamanioTaza) {
        int cantidadRestanteAlLlenar = cantidadActual - tamanioTaza;
        
        if (cantidadRestanteAlLlenar < 0) 
            System.out.println("No alcanza, no se llenó la taza");
        else
            System.out.println("Se llenó la taza");
    }
    
    public void vaciarCafetera() {
        cantidadActual = 0;
    }
    
    public void agregarCafe(int cafe) {
        cantidadActual = Math.min(capacidadMaxima, cafe+cantidadActual);
    }
    
    
    // Constructores
    public Cafetera(){}
    
    public Cafetera(int capacidadMaxima, int cantidadActual) {
        this.capacidadMaxima = capacidadMaxima;
        this.cantidadActual = cantidadActual;
    }
    
    // Getters & Setters
    public int getCapacidadMaxima() {
        return capacidadMaxima;
    }

    public void setCapacidadMaxima(int capacidadMaxima) {
        this.capacidadMaxima = capacidadMaxima;
    }

    public int getCantidadActual() {
        return cantidadActual;
    }

    public void setCantidadActual(int cantidadActual) {
        this.cantidadActual = cantidadActual;
    }
    
}
