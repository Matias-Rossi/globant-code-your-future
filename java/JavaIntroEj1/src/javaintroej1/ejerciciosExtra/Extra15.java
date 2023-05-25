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
public class Extra15 {
    
    /*
    Crea una aplicación que le pida dos números al usuario y este pueda elegir entre sumar,
    restar, multiplicar y dividir. La aplicación debe tener una función para cada operación
    matemática y deben devolver sus resultados para imprimirlos en el main.
    */
    
    
    static public void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        double a, b, resultado = 0;
        boolean continuar = true;
        int opcionElegida;
        
        System.out.println("Ingrese dos numeros separados por <ENTER>:");
        a = leer.nextDouble();
        b = leer.nextDouble();
        
        while(continuar) {
            System.out.println("1 = Sumar");
            System.out.println("2 = Restar");
            System.out.println("3 = Multiplicar");
            System.out.println("4 = Dividir");
            System.out.println("5 (u otro) = Salir");
            opcionElegida = leer.nextInt();
            
            switch(opcionElegida) {
                case 1: resultado = sumar(a,b); break;
                case 2: resultado = restar(a,b); break;
                case 3: resultado = multiplicar(a,b); break;
                case 4: resultado = dividir(a,b); break;
                default: continuar = false;
            }
            
            if(continuar) {
                System.out.println("Resultado: " + resultado);
                continue;
            } else {
                break; //redundante con el bucle
            }
                
        }
        System.out.println("Hasta luego!");
    }

    private static double sumar(double a, double b) {
        return a + b;
    }

    private static double restar(double a, double b) {
        return a - b;
    }

    private static double multiplicar(double a, double b) {
        return a * b;
    }

    private static double dividir(double a, double b) {
        return a / b;
    }
    
}
