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
public class Ejercicio13 {
    /*
    Dibujar un cuadrado de N elementos por lado utilizando el carácter “*”. Por ejemplo, si el
    cuadrado tiene 4 elementos por lado se deberá dibujar lo siguiente:
        * * * *
        *     *
        *     *
        * * * *
    */
    public static void main(String args[]) {
        for(int i=0; i<4; i++) {
            for(int j=0; j<4; j++) {
                if(i==0 || i==3 || j==0 || j== 3)
                    System.out.print("* ");
                else
                    System.out.print("  ");
            }
            System.out.println("");
        }
    }
}
