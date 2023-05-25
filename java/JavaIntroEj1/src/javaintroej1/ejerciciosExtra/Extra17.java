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
public class Extra17 {
    /*
    Crea una aplicación que nos pida un número por teclado y con una función se lo pasamos
    por parámetro para que nos indique si es o no un número primo, debe devolver true si es
    primo, sino false.
    */
    
    static public void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese un numero:");
        int numIntroducido = leer.nextInt();
        
        if(esPrimo(numIntroducido))
            System.out.println("El numero es primo");
        else
            System.out.println("El numero introducido NO es primo");
    }
    
    static public boolean esPrimo(int num) {
        for (int i = 2; i <= Math.sqrt(num); i++) {
            if(num % i == 0){
                //System.out.println("Divisible por " + i);
                return false;
            }
                
        }
        return true;
    }
}
