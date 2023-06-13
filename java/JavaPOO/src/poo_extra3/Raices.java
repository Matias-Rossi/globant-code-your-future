/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_extra3;

/**
 *
 * @author matias
 */

// Main al final de esta clase como método estático

public class Raices {
    double coef_a, coef_b, coef_c;
    
    public double getDiscriminante() {
        return Math.pow(coef_b, 2) - 4 * coef_a * coef_c;
    }
    
    public boolean tieneRaices() {
        return getDiscriminante() >= 0.0;
    }
    
    public boolean tieneRaiz() {
        return getDiscriminante() == 0.0;
    }

    public void obtenerRaices() {
        if(tieneRaices()) {
            System.out.println("x1 = " + calcularRaizSuma());
            System.out.println("x2 = " + calcularRaizResta());
        }
    }
    
    public void obtenerRaiz() {
        if(tieneRaiz()) {
            //TODO Arreglar
            System.out.println("x = " + calcularRaizSuma());
        }
    }
    
    public void calcular() {
        if(tieneRaiz()) 
            obtenerRaiz();
        else if(tieneRaices())
            obtenerRaices();
        else
            System.out.println("No tiene solución :C");
        
    }
    
    // Métodos auxiliares
    
    private double calcularRaizSuma() {
        return (- coef_b + Math.sqrt(getDiscriminante())) / (2*coef_a);
    }
    
    private double calcularRaizResta() {
        return (- coef_b - Math.sqrt(getDiscriminante())) / (2*coef_a);
    }
    
    
    
    
    // Constructores, getters & setters

    public Raices(double coef_a, double coef_b, double coef_c) {
        this.coef_a = coef_a;
        this.coef_b = coef_b;
        this.coef_c = coef_c;
    }

    public Raices() {
    }

    public double getCoef_a() {
        return coef_a;
    }

    public void setCoef_a(double coef_a) {
        this.coef_a = coef_a;
    }

    public double getCoef_b() {
        return coef_b;
    }

    public void setCoef_b(double coef_b) {
        this.coef_b = coef_b;
    }

    public double getCoef_c() {
        return coef_c;
    }

    public void setCoef_c(double coef_c) {
        this.coef_c = coef_c;
    }
    
    // main (me ahorro hacer otro archivo)
    public static void main(String[] args) {
        double a = 4;
        double b = 8;
        double c = 4;
        
        Raices r = new Raices(a, b, c);
        
        r.calcular();
    }
    
    
}
