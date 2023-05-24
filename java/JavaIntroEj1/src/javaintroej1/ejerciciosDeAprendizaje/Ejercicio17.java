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
public class Ejercicio17 {
    /*
    Recorrer un vector de N enteros contabilizando cuántos números 
    son de 1 dígito, cuántos de 2 dígitos, etcétera (hasta 5 dígitos).
    */
    static public void main(String[] args) {
        int[] vector = new int[100];
        int[] contadorDigitos = {0, 0, 0, 0, 0};
        Scanner leer = new Scanner(System.in);
        
        for(int i=0; i<100; i++) {
            vector[i] = ThreadLocalRandom.current().nextInt(1, 100000);
        }
        
        for(int i=0; i < 100; i++) {
            //System.out.println(vector[i] + " tiene " + contarDigitos(vector[i]) + " digitos");
            int cantDigitos = contarDigitos(vector[i]);
            System.out.println(cantDigitos);
            contadorDigitos[cantDigitos-1]++;
        }
        
        for(int i=0; i<5; i++) {
            System.out.println("Hay " + contadorDigitos[i] + " numeros con " + (i+1) + " digitos");
        }
        
    }
    
    static private int contarDigitos(int num) {
        int i=0;
        for(; num > 0; i++) {
            num /= 10;
        }
        return i;
    }
    
    
}
