package javaintroej1.ejerciciosDeAprendizaje;

import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author matias
 */
public class Ejercicio10 {

    /*
    Escriba un programa en el cual se ingrese un valor límite positivo, y a continuación solicite
    números al usuario hasta que la suma de los números introducidos supere el límite inicial.
    */
    

    static public void main(String args[]) {
            
        Scanner leer = new Scanner(System.in);
        int limite, numIntroducido, suma = 0;
    
        System.out.println("Ingrese un numero:");
        limite = leer.nextInt();
        
        while (suma <= limite) {
            System.out.println("Ingrese otro numero:");
            numIntroducido = leer.nextInt();
            
            suma += numIntroducido;
        }
        System.out.println("La suma (" + suma + ") ha superado al limite ("+ limite +")");
    }
    
}
