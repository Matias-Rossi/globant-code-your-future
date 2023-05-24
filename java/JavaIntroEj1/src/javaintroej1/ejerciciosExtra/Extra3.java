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
public class Extra3 {
    /*
    Elaborar un algoritmo en el cuál se ingrese una letra y se detecte si se trata de una vocal.
    Caso contrario mostrar un mensaje. Nota: investigar la función equals() de la clase String.
    */
    static public void main(String[] args) {
        String cadenaIntroducida;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingrese una letra:");
        cadenaIntroducida = leer.next();
        
        if(esVocal(cadenaIntroducida))
            System.out.println("Usted introdujo una vocal");
        else
            System.out.println("Usted NO introdujo una letra vocal");
 
    }

    private static boolean esVocal(String cadenaIntroducida) {
        char caracter = cadenaIntroducida.toLowerCase().charAt(0);
        
        switch(caracter) {
            case 'a':
            case 'e':
            case 'i':
            case 'o':
            case 'u': return true;
            default: return false;
        }
        
    }
    
    
}
