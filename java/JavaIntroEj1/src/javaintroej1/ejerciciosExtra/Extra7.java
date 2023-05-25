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
public class Extra7 {
    /*
    Realice un programa que calcule y visualice el valor máximo, el valor mínimo y el promedio
    de n números (n>0). El valor de n se solicitará al principio del programa y los números
    serán introducidos por el usuario. Realice dos versiones del programa, una usando el
    bucle “while” y otra con el bucle “do - while”.
    */
    
    public static void main(String[] args) {
        double max = Double.MIN_VALUE, min = Double.MAX_VALUE, sum = 0, introducido;
        int cantNumeros, i=0;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Introduzca la cantidad de valores a ingresar:");
        cantNumeros = leer.nextInt();
        
        do {
            System.out.println("Introduzca un numero (" + (i+1) + "/" + cantNumeros + "):");
            introducido = leer.nextDouble();
            
            sum += introducido;
            
            if(introducido > max)
                max = introducido;
            if(introducido < min)
                min = introducido;

            i++;
        } while(i < cantNumeros);
        
        /*
        while(i < cantNumeros) {
            System.out.println("Introduzca un numero (" + (i+1) + "/" + cantNumeros + "):");
            introducido = leer.nextDouble();
            
            sum += introducido;
            
            if(introducido > max)
                max = introducido;
            if(introducido < min)
                min = introducido;

            i++;
        }
        */
        
        System.out.println("El promedio es: " + (sum/cantNumeros));
        System.out.println("El mayor valor es: " + max);
        System.out.println("El menor valor es: " + min);
        
    }
    
}
