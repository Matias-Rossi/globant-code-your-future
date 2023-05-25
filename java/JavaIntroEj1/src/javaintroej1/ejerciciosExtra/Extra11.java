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
public class Extra11 {
    /*
    Escribir un programa que lea un número entero y devuelva el número de dígitos que
    componen ese número. Por ejemplo, si introducimos el número 12345, el programa
    deberá devolver 5. Calcular la cantidad de dígitos matemáticamente utilizando el operador
    de división. Nota: recordar que las variables de tipo entero truncan los números o
    resultados.
    */
    
    static public void main(String[] args) {
        int i, numIntroducido;
                
        System.out.println("Ingrese un numero:");
        Scanner leer = new Scanner(System.in);
        numIntroducido = leer.nextInt();
        
        for(i=0; numIntroducido > 0; i++) {
            numIntroducido/=10;
        }
        
        i = Math.max(i, 1);
        
        System.out.println(i + " digitos");
        
    }
    
}
