/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaintroej1.ejerciciosDeAprendizaje;

import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;

/**
 *
 * @author matias
 */
public class Ejercicio16 {
    /*
    Realizar un algoritmo que rellene un vector de tamaño N con valores aleatorios y le pida al
    usuario un numero a buscar en el vector. El programa mostrará donde se encuentra el
    numero y si se encuentra repetido
    */
    
    static public void main(String[] args) {
        int[] vector = new int[100];
        int numBuscado, pos;
        boolean estaRepetido = false;
        Scanner leer = new Scanner(System.in);
        
        for(int i=0; i<100; i++) {
            vector[i] = ThreadLocalRandom.current().nextInt(0, 100);
        }
        
        System.out.println("Ingrese el valor a buscar");
        numBuscado = leer.nextInt();
        
        pos = encontrarPosicionDe(vector, numBuscado);
        
        if(pos >= 0) {
            
            for(int i=pos+1; i<100; i++) {
                if(vector[i]==numBuscado)
                    estaRepetido = true;
            }
            
            if(estaRepetido)
                System.out.println("El valor buscado se repite, el primero aparece en posicion " + pos);
            else
                System.out.println("El valor buscado no se repite, aparece en posicion " + pos);
        }
        else {
            System.out.println("El valor buscado no se encuentra en el vector");
        }
        
        
        
        
    }
    
    static private int encontrarPosicionDe(int[] vector, int num) {
        for(int i=0; i<100; i++) {
            if(vector[i]==num)
                return i;
        }
        return -1;
    }
}
