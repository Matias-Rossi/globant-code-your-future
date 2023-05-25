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
public class Extra20 {
    /*
    Crear una función rellene un vector con números aleatorios, pasándole un arreglo por
    parámetro. Después haremos otra función o procedimiento que imprima el vector.
    */
    
    
    static public void main(String[] args) {
        int[] vector = new int[5];
        
        llenarAleatoriamente(vector);
        imprimirVector(vector);
    }

    public static void llenarAleatoriamente(int[] vector) {
        for(int i=0; i<vector.length; i++) {
            vector[i] = (int) (Math.random() * 10);
        }
    }

    private static void imprimirVector(int[] vector) {
        for(int i=0; i<vector.length; i++) {
            System.out.print( vector[i] + " " );
        }
    }
}
