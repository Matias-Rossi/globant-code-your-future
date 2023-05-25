/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaintroej1.ejerciciosExtra;

import static javaintroej1.ejerciciosDeAprendizaje.Ejercicio18.mostrarMatriz;

/**
 *
 * @author matias
 */
public class Extra22 {
    /*
    Realizar un programa que rellene una matriz de tamaño NxM con valores aleatorios y
    muestre la suma de sus elementos.
    */
    
    static public void main(String[] args) {
        int[][] matriz = llenarAleatoriamente(3, 3);
        System.out.println("Suma = " + sumarElementosMatriz(matriz));
        mostrarMatriz(matriz); 
    }

    private static int[][] llenarAleatoriamente(int filas, int columnas) {
        int[][] matriz = new int[filas][columnas];
        
        for (int i = 0; i < filas; i++) {
            for (int j = 0; j < columnas; j++) {
                matriz[i][j] = (int) (Math.random()*10);
            }
        }
        
        return matriz;
    }

    private static int sumarElementosMatriz(int[][] matriz) {
        int suma = 0;
        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz[0].length; j++) {
                suma += matriz[i][j];
            }
        }
        return suma;
    }
    
}
