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
public class Extra8 {
    /*
    Escriba un programa que lea números enteros. Si el número es múltiplo de cinco debe
    detener la lectura y mostrar la cantidad de números leídos, la cantidad de números pares y
    la cantidad de números impares. Al igual que en el ejercicio anterior los números
    negativos no deben sumarse. Nota: recordar el uso de la sentencia break.
    */
    
    static public void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int cantLeidos = 0, cantPares = 0, cantImpares = 0, numLeido;
        
        
        while(true) {
            System.out.println("Introduzca un numero:");
            numLeido = leer.nextInt();
            
            if(esDivisiblePor(numLeido, 5)) {
                System.out.println("Cantidad de numeros leidos: " + cantLeidos);
                System.out.println("Cantidad de numeros pares: " + cantPares);
                System.out.println("Cantidad de numeros impares: " + cantImpares);
                break;
            }
            if(numLeido < 0) {
                continue;
            } 
            else if(esDivisiblePor(numLeido, 2)) {
                cantLeidos++;
                cantPares++;
            } else {
                cantLeidos++;
                cantImpares++;
            }
        }
        
        
    }
    
    static public boolean esDivisiblePor(int multiplo, int divisor) {
        return multiplo % divisor == 0;
    }
    
}
