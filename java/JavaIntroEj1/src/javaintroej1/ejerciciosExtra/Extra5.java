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
public class Extra5 {
    /*
    Una obra social tiene tres clases de socios:
        - Los socios tipo ‘A’ abonan una cuota mayor, pero tienen un 50% de descuento en
        todos los tipos de tratamientos.
        - Los socios tipo ‘B’ abonan una cuota moderada y tienen un 35% de descuento para
        los mismos tratamientos que los socios del tipo A.
        - Los socios que menos aportan, los de tipo ‘C’, no reciben descuentos sobre dichos
        tratamientos.
    Solicite una letra (carácter) que representa la clase de un socio, y luego un valor
    real que represente el costo del tratamiento (previo al descuento) y determine el
    importe en efectivo a pagar por dicho socio.
    */
    
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        
        
        System.out.println("Introduzca la clase de socio (A/B/C):");
        String cadenaIntroducida = leer.next();
        
        System.out.println("Introduzca el costo de tratamiento:");
        double precioPrevioDescuento = leer.nextDouble();
        
        double importeEfectivo = precioPrevioDescuento * factorDescuentoClase(cadenaIntroducida);
        
        System.out.println("El importe a pagar en efectivo es $" + importeEfectivo);
        
    }

    private static double factorDescuentoClase(String cadenaIntroducida) {
        char claseSocio = cadenaIntroducida.toUpperCase().charAt(0);
        
        switch(claseSocio){
            case 'A': return 1 - 0.5;
            case 'B': return 1 - 0.35;
            case 'C': return 1;
            default: return 1;
        }
    }
}
