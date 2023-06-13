/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_extra2;

import java.util.Scanner;

/**
 *
 * @author matias
 */
public class Puntos {
    private double x1, x2, y1, y2;
    
    public void crearPuntos() {
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese coordenadas para x1 y y1, separados por <ENTER>:");
        x1 = leer.nextDouble();
        y1 = leer.nextDouble();
        
        System.out.println("Ingrese coordenadas para x2 y y2, separados por <ENTER>:");
        x2 = leer.nextDouble();
        y2 = leer.nextDouble();
    }
    
    public double calcularDistancia() {
        double distanciaX = x2-x1;
        double distanciaY = y2-y1;
        return Math.sqrt(Math.pow(distanciaX, 2) + Math.pow(distanciaY, 2));
    }
    
    
    
    // Constructores, getters & setters

    public Puntos(double x1, double x2, double y1, double y2) {
        this.x1 = x1;
        this.x2 = x2;
        this.y1 = y1;
        this.y2 = y2;
    }

    public Puntos() {
    }

    public double getX1() {
        return x1;
    }

    public void setX1(double x1) {
        this.x1 = x1;
    }

    public double getX2() {
        return x2;
    }

    public void setX2(double x2) {
        this.x2 = x2;
    }

    public double getY1() {
        return y1;
    }

    public void setY1(double y1) {
        this.y1 = y1;
    }

    public double getY2() {
        return y2;
    }

    public void setY2(double y2) {
        this.y2 = y2;
    }
    
    public static void main(String[] args) {
        Puntos p = new Puntos();
        p.crearPuntos();
        System.out.println("Distancia: " + p.calcularDistancia());
    }
    
}
