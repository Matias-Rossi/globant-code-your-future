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
public class Extra10 {
    
    /*
    Realice un programa para que el usuario adivine el resultado de una multiplicación entre
dos números generados aleatoriamente entre 0 y 10. El programa debe indicar al usuario
si su respuesta es o no correcta. En caso que la respuesta sea incorrecta se debe permitir
al usuario ingresar su respuesta nuevamente. Para realizar este ejercicio investigue como
utilizar la función Math.random() de Java.
    */
    
    static public void main(String[] args) {
        int producto = (int) ((Math.random() * Math.random() * 10)); // el numero A ADIVINAR esta entre 0 y 10
        
        int numIntroducido;
        boolean adivinado = false;
        Scanner leer = new Scanner(System.in);
        
        while(!adivinado) {
            System.out.println("Intente adivinar el numero:");
            numIntroducido = leer.nextInt();
            
            adivinado = numIntroducido == producto;
            
            if(adivinado) {
                System.out.println("Ha adivinado el numero!");
                break;
            }
            
            System.out.println("Siga probando");
        }
    }
    
    
}
