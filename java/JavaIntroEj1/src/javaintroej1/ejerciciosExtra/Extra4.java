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
public class Extra4 {
    /*
    Elaborar un algoritmo en el cuál se ingrese un número entre 1 y 10 y se muestre su
    equivalente en romano.
    */
    
    static public void main(String[] args) {        
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Introduzca un numero entre 1 y 10:");
        int numIntroducido = leer.nextInt();
        
        System.out.println(convertirARomano(numIntroducido)); 
        
    }
    
    static public String convertirARomano(int numIntroducido) {
        switch(numIntroducido) {
            case 10: return "X";
            case 9: return "IX";
            case 8: return "VIII";
            case 7: return "VII";
            case 6: return "VI";
            case 5: return "V";
            case 4:return "IV";
            case 3: return "III";
            case 2: return "II";
            case 1: return "I";
            default: return ":/";
        }
    }
}
