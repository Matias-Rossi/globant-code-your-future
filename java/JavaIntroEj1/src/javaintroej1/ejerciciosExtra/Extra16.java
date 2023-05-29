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
public class Extra16 {
    /*
    Diseñe una función que pida el nombre y la edad de N personas e imprima los datos de
    las personas ingresadas por teclado e indique si son mayores o menores de edad.
    Después de cada persona, el programa debe preguntarle al usuario si quiere seguir
    mostrando personas y frenar cuando el usuario ingrese la palabra “No”.
    */
    static int nPersonas = 5;
    
    static public void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        String[] nombres = new String[nPersonas];
        int[] edades = new int[nPersonas];
        
        //Entrad
        for (int i = 0; i < nPersonas; i++) {
            System.out.print("\nIngrese el nombre de la persona: ");
            nombres[i] = leer.nextLine();
            System.out.print("Ingrese la edad de " + nombres[i] + ": ");
            
            //Esto es así para evitar que el caracter de salto sea leído por nextInt
            edades[i] = Integer.parseInt(leer.nextLine()); 
        }
        
        // Salida
        for (int i = 0; i < nPersonas; i++) {
            if(esMayor(edades[i]))
                System.out.println("\n" + nombres[i] + " es mayor de edad (" + edades[i] + ")");
            else
                System.out.println("\n" + nombres[i] + " es menor de edad (" + edades[i] + ")");
            
            
            if(usuarioDeseaContinuar(leer))
                continue;
            else
                break;
        }
       

    }

    private static boolean usuarioDeseaContinuar(Scanner leer) {
        while(true) {
            System.out.println("¿Desea continuar mostrando datos? (S/N)");
            String respuesta = leer.nextLine();
            
            if(respuesta.toUpperCase().equals("S")) {
                return true;
            }
            else if(respuesta.toUpperCase().equals("N")) {
                return false;
            }
            else {
                System.out.println("Respuesta inválida. Inténtelo de nuevo.");
            }
            
        }
        
    }

    private static boolean esMayor(int edad) {
        return edad >= 18;
    }
    
}
