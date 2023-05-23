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
public class ejercicio3 {
    
    //  Escribir un programa que pida una frase y la muestre toda en mayúsculas y después toda
    //  en minúsculas. Nota: investigar la función toUpperCase() y toLowerCase() en Java.
    
    static public void main(String args[]) {
        String frase;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Escriba su frase:");
        frase = leer.nextLine();
        
        System.out.println(frase.toUpperCase());
        System.out.println(frase.toLowerCase());
    }
}
