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
public class Extra14 {
    
    /*
    Se dispone de un conjunto de N familias, cada una de las cuales tiene una M cantidad de
    hijos. Escriba un programa que pida la cantidad de familias y para cada familia la cantidad
    de hijos para averiguar la media de edad de los hijos de todas las familias.
    */
    
    static public void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        
        int cantFamilias;
        int cantHijosDeLaFamilia = 0;
        int cantHijosTotales = 0, sumaEdades = 0;
        
        System.out.println("Ingrese la cantidad de familias: ");
        cantFamilias = leer.nextInt();
        
        for (int i = 0; i < cantFamilias; i++) {
            System.out.println("Ingrese la cantidad de hijos de la familia (" + (i+1) + "/"+cantFamilias+"):");
            cantHijosDeLaFamilia = leer.nextInt();
            
            for (int j = 0; j < cantHijosDeLaFamilia; j++) {
                System.out.println("Ingrese la edad:");
                sumaEdades += leer.nextInt();
                cantHijosTotales++;
            }
        }
        
        double promedio = (double) sumaEdades / cantHijosTotales;
        
        System.out.println("El promedio de edad de los hijos de las familias es: " + promedio);

    }
    
}
