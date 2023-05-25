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
public class Extra19 {
    /*
    Escriba un programa que averigüe si dos vectores de N enteros son iguales (la
    comparación deberá detenerse en cuanto se detecte alguna diferencia entre los
    elementos).
    */
    
    
    static public void main(String[] args) {
    
        int[] vector1 = {1, 2, 3, 4, 5};
        int[] vector2 = {1, 2, 3, 3, 5};
        
        if(sonIguales(vector1, vector2))
            System.out.println("Los vectores son iguales");
        else
            System.out.println("Los vectores son distintos");
    }

    private static boolean sonIguales(int[] vector1, int[] vector2) {
        for (int i = 0; i < 5; i++) {
            if(vector1[i] != vector2[i]) {
                return false;
            }
        }
        return true;
    }
    
}
