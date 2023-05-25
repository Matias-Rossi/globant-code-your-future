/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaintroej1.ejerciciosExtra;

import java.util.Scanner;

/**
 *
 * @author matias
 */
public class Extra18 {
    /*
    Realizar un algoritmo que calcule la suma de todos los elementos de un vector de tamaño
    N, con los valores ingresados por el usuario.
    */
    
    static public void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int[] vector = new int[5];
        int suma = 0;
        
        for (int i = 0; i < 5; i++) {
            System.out.println("Ingrese un numero:");
            vector[i] = leer.nextInt();
        }
        
        for (int i = 0; i < 5; i++) {
            suma += vector[i];
        }
        
        System.out.println("La suma da " + suma);
    }
    
}
