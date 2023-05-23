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
public class ejercicio1 {
    
    /*
    Escribir un programa que pida dos números enteros por teclado y calcule 
    la suma de los dos. El programa deberá después mostrar el resultado de la suma
    
    */
    
    public static void  main(String[] args) {
        int a, b, suma;
        Scanner leer = new Scanner(System.in);
        System.out.println("Escriba dos numeros separados por <ENTER>:");
        a = leer.nextInt();
        b = leer.nextInt();
        
        suma = a + b;
        
        System.out.println("Suma = " + suma);
        
    }
}
