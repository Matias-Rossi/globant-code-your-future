package javaintroej1.ejerciciosDeAprendizaje;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author matias
 */
public class Ejercicio15 {
    /*
        Realizar un algoritmo que rellene un vector con los 100 primeros números enteros y los
        muestre por pantalla en orden descendente.
    */
    public static void main(String args[]) {
        int[] vector = new int[100];
        
        for(int i=0; i<100; i++) {
            vector[i] = i;
        }
        
        for(int i=99; i>=0; i--) {
            System.out.println(vector[i]);
        }
    }
}
