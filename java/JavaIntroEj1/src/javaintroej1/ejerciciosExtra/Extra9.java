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
public class Extra9 {
    /*
    Simular la división usando solamente restas. Dados dos números enteros mayores que
    uno, realizar un algoritmo que calcule el cociente y el residuo usando sólo restas. Método:
    Restar el dividendo del divisor hasta obtener un resultado menor que el divisor, este
    resultado es el residuo, y el número de restas realizadas es el cociente.
    Por ejemplo: 50 / 13:
    50 – 13 = 37 una resta realizada
    37 – 13 = 24 dos restas realizadas
    24 – 13 = 11 tres restas realizadas
    dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.
    */
    static public void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int divisor, dividendo, cociente, resto;
        
        System.out.println("Ingrese dividendo y divisor, separados por <ENTER>:");
        dividendo = leer.nextInt();
        divisor = leer.nextInt();
        
        resto = dividendo;
        
        for(cociente = 0; resto > divisor; cociente++) {
            resto -= divisor;
        }
        
        System.out.println("Cociente: " + cociente);
        System.out.println("resto: " + resto);
        
    }
}
