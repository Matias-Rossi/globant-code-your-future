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
public class ejercicio6 {
    
    //Crear un programa que dado un numero determine si es par o impar.
    
    static public void main(String args[]) {
        Scanner leer = new Scanner(System.in);
        int numeroIngresado;
        boolean numeroEsPar;
    
        System.out.println("Ingrese un numero:");
        numeroIngresado = leer.nextInt();
        
        numeroEsPar = numeroIngresado % 2 == 0;
        
        if (numeroEsPar)
            System.out.println("El numero ingresado es par");    
        else
            System.out.println("El numero ingresado no es par");
    
    }
    
}
