/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaintroej1.ejerciciosDeAprendizaje;

import java.util.Scanner;

/**
 *
 * @author matias
 */
public class ejercicio4 {
    
    // Dada una cantidad de grados centígrados se debe mostrar su equivalente en grados
    // Fahrenheit. La fórmula correspondiente es: F = 32 + (9 * C / 5).
    
    static public void main(String args[]) {
        Scanner leer = new Scanner(System.in);
        float tempCentigrados, tempFahrenheit;
        
        System.out.println("Ingrese la temperatura en grados centigrados:");
        tempCentigrados = leer.nextFloat();
        
        tempFahrenheit = 32 + (9 * tempCentigrados / 5);
        
        System.out.println("La temperatura en Fahrenheit es " + tempFahrenheit);
    }
}
