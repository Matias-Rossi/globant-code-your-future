/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaintroej1.ejerciciosDeAprendizaje;

import static javaintroej1.ejerciciosDeAprendizaje.Ejercicio18.mostrarMatriz;
import static javaintroej1.ejerciciosDeAprendizaje.Ejercicio18.trasponerMatriz;

/**
 *
 * @author matias
 */
public class Ejercicio19 {
    /*
    Realizar un programa que rellene un matriz de 4 x 4 de valores aleatorios y muestre la
    traspuesta de la matriz. La matriz traspuesta de una matriz A se denota por B y se obtiene
    cambiando sus filas por columnas (o viceversa).
    */
    
    static public void main(String[] args) {
        int[][] matrizFuente = {{0, -2, 4}, {2, 0, 2}, {-4, -2, 0}};
        
        int[][] matrizAntiSimetrica = invertirElementosMatriz(trasponerMatriz(matrizFuente));
        
        if(sonIgualesMatrices(matrizFuente, matrizAntiSimetrica)) {
            System.out.println("La matriz es antisimetrica.");
        } else {
            System.out.println("La matriz NO es antisimetrica.");
        }
        
        //mostrarMatriz(matrizFuente);
        //mostrarMatriz(matrizAntiSimetrica);
        
    }
    
    static public int[][] invertirElementosMatriz(int[][] matrizFuente) {
        int cantFilas = matrizFuente.length; 
        int cantColumnas = matrizFuente[0].length;
        
        int[][] matrizConValoresInvertidos = new int[cantFilas][cantColumnas];
        
        for (int i = 0; i < cantFilas; i++) {
            for (int j = 0; j < cantColumnas; j++) {
                matrizConValoresInvertidos[i][j] = -matrizFuente[i][j];
            }
        }
        
        return matrizConValoresInvertidos;
    }
    
    static public boolean sonIgualesMatrices(int[][] matrizA, int[][] matrizB) {
        int cantFilas = matrizA.length; 
        int cantColumnas = matrizA[0].length;
        
        if( cantFilas != matrizB.length || cantColumnas != matrizB[0].length ) {
            return false;
        }
        
        for (int i = 0; i < cantFilas; i++) {
            for (int j = 0; j < cantColumnas; j++) {
                if(matrizA[i][j] != matrizB[i][j]) {
                    return false;
                }
            }
        }
        
        return true;
        
    }

}
