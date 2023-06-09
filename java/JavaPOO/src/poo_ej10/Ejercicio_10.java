/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_ej10;

import java.lang.reflect.Array;
import java.util.Arrays;

/**
 *
 * @author matias
 */

/*
Realizar un programa en Java donde se creen dos arreglos: el primero será un arreglo A
de 50 números reales, y el segundo B, un arreglo de 20 números, también reales. El
programa deberá inicializar el arreglo A con números aleatorios y mostrarlo por pantalla.
Luego, el arreglo A se debe ordenar de menor a mayor y copiar los primeros 10 números
ordenados al arreglo B de 20 elementos, y rellenar los 10 últimos elementos con el valor
0.5. Mostrar los dos arreglos resultantes: el ordenado de 50 elementos y el combinado de
20.
*/

public class Ejercicio_10 {
    public static void main(String[] args) {
        double[] arregloA = new double[50];
        double[] arregloB = new double[20];
        
        llenarAleatoriamenteArreglo(arregloA);
        
        System.out.println("\nArreglo A: ");
        mostrarArreglo(arregloA);
        
        Arrays.sort(arregloA);
        
        // primeros 10 elementos
        for (int i = 0; i < 10; i++) {
            arregloB[i] = arregloA[i];
        }
        
        Arrays.fill(arregloB, 10, 20, 0.5);
        
        System.out.println("\nArreglo A: ");
        mostrarArreglo(arregloA);
        
        System.out.println("\nArreglo B: ");
        mostrarArreglo(arregloB);
        
        
        
    }
    
    private static void llenarAleatoriamenteArreglo(double[] arreglo) {
        for (int i = 0; i < arreglo.length; i++) {
            arreglo[i] = Math.random() * 20;
        }
    }

    private static void mostrarArreglo(double[] arreglo) {
        for (int i = 0; i < arreglo.length; i++) {
            System.out.print(arreglo[i]+ ", ");
            
            //Nueva linea
            if(i%10 == 0)
                System.out.println("");
        }
        System.out.println("");
    }
}
