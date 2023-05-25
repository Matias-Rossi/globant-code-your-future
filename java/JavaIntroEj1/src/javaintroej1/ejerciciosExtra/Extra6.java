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
public class Extra6 {
    /*
    Leer la altura de N personas y determinar el promedio de estaturas que se 
    encuentran por debajo de 1.60 mts. y el promedio de estaturas en general.
    */
    static public void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        double sumaTotal = 0;
        double sumaMenores160 = 0;
        int cantMenores160 = 0;
        double estatura;
        
        System.out.println("Introduzca la cantidad de personas:");
        int cantPersonas = leer.nextInt();
        
        int[] personas = new int[cantPersonas];
        
        for (int i = 0; i < cantPersonas; i++) {
            System.out.println("Introduzca la estatura en metros de la persona:");
            estatura = leer.nextDouble();
            
            if(estatura < 1.60) {
                cantMenores160++;
                sumaMenores160 += estatura;
            }
            sumaTotal += estatura;
        }
        
        System.out.println("Promedio de estatura de menores a 1.60: " + (sumaMenores160 / cantMenores160));
        System.out.println("Promeido general de estatura: " + (sumaTotal/cantPersonas));
        
    }
}
