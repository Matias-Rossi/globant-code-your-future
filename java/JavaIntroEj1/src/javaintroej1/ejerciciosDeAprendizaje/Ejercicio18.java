/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaintroej1.ejerciciosDeAprendizaje;

/**
 *
 * @author matias
 */
public class Ejercicio18 {
    /*
    Realizar un programa que rellene un matriz de 4 x 4 de valores aleatorios y muestre la
    traspuesta de la matriz. La matriz traspuesta de una matriz A se denota por B y se obtiene
    cambiando sus filas por columnas (o viceversa).
    */
    
    static public void main(String[] args) {
        int[][] matrizA = {{1, 0, 4}, {0, 5, 0}, {6, 0, -9}};
        
        int[][] matrizB = trasponerMatriz(matrizA);
        
        mostrarMatriz(matrizB);
                
          
        
    }
    
    static public int[][] trasponerMatriz(int[][] matrizA) {
        int cantFilas = matrizA.length; 
        int cantColumnas = matrizA[0].length;
        
        int[][] matrizB = new int[cantFilas][cantColumnas];
        
        for(int i=0; i < cantFilas ; i++) {
            for(int j=0; j < cantColumnas ; j++) {
                matrizB[i][j] = matrizA[j][i];
            }
        }
        
        return matrizB;
    }
    
    static public void mostrarMatriz(int[][] matriz) {
        int cantFilas = matriz.length; 
        int cantColumnas = matriz[0].length;
        
        for(int i=0; i < cantFilas ; i++) {
            for(int j=0; j < cantColumnas ; j++) {
                System.out.print(matriz[i][j] + "\t");
            }
            System.out.print("\n");
        }
    }
    
}
