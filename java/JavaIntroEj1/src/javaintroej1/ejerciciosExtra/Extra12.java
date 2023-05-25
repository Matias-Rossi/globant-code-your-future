/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaintroej1.ejerciciosExtra;

/**
 *
 * @author matias
 */
public class Extra12 {
    
    /*
    Necesitamos mostrar un contador con 3 dígitos (X-X-X), que muestre los números del 0-0-
    0 al 9-9-9, con la particularidad que cada vez que aparezca un 3 lo sustituya por una E.
    Ejemplo:
        0-0-0
        0-0-1
        0-0-2
        0-0-E
        0-0-4
        0-1-2
        0-1-E
    Nota: investigar función equals() y como convertir números a String.
    */
    
    static public void main(String[] args) {

        for(int num=0; num <= 999; num++) {
            String s = convertirAContadorDeTresDigitos(num);
            System.out.println(s);
        }
    }

    public static String convertirAContadorDeTresDigitos(int num) {
        String s = Integer.toString(num);
        
        while(s.length() < 3) {
            s = "0" + s;
        }
        
        s = s.charAt(0) + "-" + s.charAt(1) + "-" + s.charAt(2);
        return s.replace('3', 'E');
    }
    
}
