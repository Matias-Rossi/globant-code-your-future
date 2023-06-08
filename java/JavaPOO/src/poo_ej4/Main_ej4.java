/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_ej4;

/**
 *
 * @author matias
 */
public class Main_ej4 {
    static public void main(String[] args) {
        Rectangulo rect = new Rectangulo();
        rect.crearRectangulo();
        
        System.out.println("Superficie: " + rect.calcularSuperficie());
        System.out.println("Perimetro: " + rect.calcularPerimetro());
        
        rect.dibujarRectangulo();
    }
}
