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
public class Extra23 {
    /*
    Construya un programa que lea 5 palabras de mínimo 3 y hasta 5 caracteres y, a medida
    que el usuario las va ingresando, construya una “sopa de letras para niños” de tamaño de
    20 x 20 caracteres. Las palabras se ubicarán todas en orden horizontal en una fila que
    será seleccionada de manera aleatoria. Una vez concluida la ubicación de las palabras,
    rellene los espacios no utilizados con un número aleatorio del 0 al 9. Finalmente imprima
    por pantalla la sopa de letras creada.
    Nota: Para resolver el ejercicio deberá investigar cómo se utilizan las siguientes funciones
    de Java substring(), Length() y Math.random().
*/
    static public void main(String[] args) {
        String palabra;
        
        char sopa[][] = new char[20][20];
        boolean[] filasOcupadas = inicializarVectorFilas();
        
        for (int i = 0; i < 5; i++) {
            palabra = pedirYValidarPalabra();
            int filaAInsertar = obtenerFilaAleatoriaVacia(filasOcupadas);
            int columnaAInsertar = obtenerColumnaAleatoria(palabra);
            insertarPalabraEnFilaYColumna(palabra, sopa, filaAInsertar, columnaAInsertar);
        }
        rellenarSopaConNumerosAleatorios(sopa);
        mostrarMatriz(sopa);
        
    }
    
    private static String pedirYValidarPalabra() {
        Scanner leer = new Scanner(System.in);
        String palabraLeida;

        while(true) {
            System.out.println("Ingrese una palabra de entre 3 y 5 letras:");
            palabraLeida = leer.nextLine();
            int cantidadLetras = palabraLeida.length();

            if(3 <= cantidadLetras && cantidadLetras <=5) 
                return palabraLeida;
            else
                System.out.println("La palabra escrita es inválida.");
        }
    }

    private static boolean[] inicializarVectorFilas() {
        boolean[] ret = new boolean[20];
        for (int i = 0; i < 20; i++) {
            ret[i] = false;
        }
        return ret;
    }

    private static int obtenerFilaAleatoriaVacia(boolean[] filasOcupadas) {
        do {
            int filaRandom = (int) (Math.random() * 20);
            if(!filasOcupadas[filaRandom]) {
                filasOcupadas[filaRandom] = true;
                return filaRandom;
            }
        } while(true);
    }

    private static int obtenerColumnaAleatoria(String palabra) {
        //Numero que tiene en cuenta a la longitud de la palabra para no excederse de la fila 20
        return (int) (Math.random() * (20-palabra.length()));
    }

    private static void insertarPalabraEnFilaYColumna(String palabra, char[][] sopa, int filaAInsertar, int columnaAInsertar) {
        for (int i = 0; i < palabra.length(); i++) {
            sopa[filaAInsertar][i + columnaAInsertar] = palabra.charAt(i);
        }
    }

    private static void rellenarSopaConNumerosAleatorios(char[][] sopa) {
        for (int i = 0; i < 20; i++) {
            for (int j = 0; j < 20; j++) {
                if(sopa[i][j] == 0) //Valor predeterminado
                    sopa[i][j] = Character.forDigit((int)(Math.random() * 9), 10);
            }
        }
    }

    private static void mostrarMatriz(char[][] sopa) {
        for (int i = 0; i < sopa.length; i++) {
            for (int j = 0; j < sopa[0].length; j++) {
                System.out.print(sopa[i][j] + " ");
            }
            System.out.print("\n");
        }
    }

    
    
}
