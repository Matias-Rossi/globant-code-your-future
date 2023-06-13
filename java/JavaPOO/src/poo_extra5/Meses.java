/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_extra5;

import java.util.Scanner;

/**
 *
 * @author matias
 */
public class Meses {
    static String[] meses = {"enero", "febrero", "marzo", "abril", "mayo", "junio", 
        "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"
    };
    
    static public void main(String[] args) {
        String mesSecreto = meses[(int) (Math.random() * 12)];
        Scanner leer = new Scanner(System.in);
        
        
        System.out.print("Adivine el mes secreto. Introduzca el nombre del mes en minúsculas: ");
        while(true) {
            String entrada = leer.next();
            if(entrada.equals(mesSecreto)) {
                System.out.println("¡Ha acertado!");
                break;
            } else {
                System.out.print("No ha acertado. Intente adivinarlo introduciendo otro mes: ");
            }
        }
    }
}
