/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaintroej1.ejerciciosDeAprendizaje;

import java.util.Scanner;
import static javaintroej1.ejerciciosDeAprendizaje.Ejercicio18.mostrarMatriz;

/**
 *
 * @author matias
 */
public class Ejercicio20 {

    /*
    Un cuadrado mágico 3 x 3 es una matriz 3 x 3 formada por números del 1 al 9 donde la
    suma de sus filas, sus columnas y sus diagonales son idénticas. Crear un programa que
    permita introducir un cuadrado por teclado y determine si este cuadrado es mágico o no.
    El programa deberá comprobar que los números introducidos son correctos, es decir,
    están entre el 1 y el 9.
     */
    static public void main(String[] args) {
        int[][] matriz = llenarMatrizPorTeclado(3, 3);
        int a = 2/0;
        boolean matrizEsMagica = verificarSiMatrizEsMagica(matriz);

        if (matrizEsMagica) {
            System.out.println("La matriz es magica");
        } else {
            System.out.println("La matriz no es magica");
        }

        System.out.println("\n");
        mostrarMatriz(matriz);

    }

    static public int[][] llenarMatrizPorTeclado(int cantFilas, int cantColumnas) {
        int[][] matriz = new int[cantFilas][cantColumnas];
        Scanner leer = new Scanner(System.in);
        int valorIntroducido;

        for (int i = 0; i < cantFilas; i++) {
            for (int j = 0; j < cantColumnas; j++) {

                while (true) {
                    System.out.println("Ingrese un numero para la posicion [" + i + "," + j + "]:");
                    valorIntroducido = leer.nextInt();

                    if (1 > valorIntroducido || valorIntroducido > 9) {
                        continue;
                    } else {
                        matriz[i][j] = valorIntroducido;
                        break;
                    }
                };

            }
        }

        return matriz;
    }

    static public boolean verificarSiMatrizEsMagica(int[][] matriz) {
        int cantFilas = matriz.length;
        int cantColumnas = matriz[0].length;

        if (cantFilas != cantColumnas) {
            return false;
        }

        int suma = sumarDiagonalPrincipal(matriz, cantFilas);

        if (suma != sumarDiagonalSecundaria(matriz, cantFilas)) {
            return false;
        }

        for (int i = 0; i < cantFilas; i++) {
            if (sumarFila(matriz, i) != suma) {
                return false;
            }
        }

        for (int i = 0; i < cantColumnas; i++) {
            if (sumarColumna(matriz, i) != suma) {
                return false;
            }
        }

        return true;
    }

    public static int sumarDiagonalPrincipal(int[][] matriz, int tamanio) {
        int suma = 0;

        for (int i = 0; i < tamanio; i++) {
            suma += matriz[i][i];
        }

        return suma;
    }

    public static int sumarDiagonalSecundaria(int[][] matriz, int tamanio) {
        int suma = 0;

        for (int i = 0; i < tamanio; i++) {
            suma += matriz[i][tamanio - i - 1];
        }

        return suma;
    }

    private static int sumarFila(int[][] matriz, int fila) {
        int suma = 0;

        for (int i = 0; i < matriz[fila].length; i++) {
            suma += matriz[fila][i];
        }

        return suma;
    }

    private static int sumarColumna(int[][] matriz, int columna) {
        int suma = 0;

        for (int i = 0; i < matriz.length; i++) {
            suma += matriz[i][columna];
        }

        return suma;
    }

}
