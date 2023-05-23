/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaintroej1.ejerciciosDeAprendizaje;

import java.util.Scanner;

/**
 *
 * @author matias
 */
public class Ejercicio12 {
    /*
    Realizar un programa que simule el funcionamiento de un dispositivo RS232, este tipo de
    dispositivo lee cadenas enviadas por el usuario. Las cadenas deben llegar con un formato
    fijo: tienen que ser de un máximo de 5 caracteres de largo, el primer carácter tiene que ser
    X y el último tiene que ser una O.
    
    Las secuencias leídas que respeten el formato se consideran correctas, la secuencia
    especial “&&&&&” marca el final de los envíos (llamémosla FDE), y toda secuencia distinta
    de FDE, que no respete el formato se considera incorrecta.
    
    Al finalizar el proceso, se imprime un informe indicando la cantidad de lecturas correctas e
    incorrectas recibidas. Para resolver el ejercicio deberá investigar cómo se utilizan las
    siguientes funciones de Java Substring(), Length(), equals().
    */
    
    static public void main(String args[]) {
            
        Scanner leer = new Scanner(System.in);
        String cadena;
        int lecturasCorrectas = 0, lecturasIncorrectas = 0;
        boolean continuar = true;
      
        
        while(continuar) {
            System.out.println("Ingrese una cadena:");
            cadena = leer.nextLine();
            
            switch(validarCadena(cadena)) {
                case 0: lecturasIncorrectas++; break;
                case 2: continuar = false;
                case 1: lecturasCorrectas++;
            }
            
        }
        System.out.println("Lecturas correctas: " + lecturasCorrectas);
        System.out.println("Lecturas incorrectas: " + lecturasIncorrectas);
    }
    
    // 0 = invalido; 1 = valido; 2=valido y todo &
    static private int validarCadena(String cadena) {
        int longCadena = cadena.length();
        
        if(longCadena > 5) return 0;
        
        if(cadena.substring(0,1).equals("X") &&  cadena.substring(longCadena-1,longCadena).equals("O")) {
            return 1;
        } else {
            if(verificarTodosAmpersand(cadena) && longCadena == 5)
                return 2;
            else
                return 0;
        }
    }
    
    static private boolean verificarTodosAmpersand(String cadena) {
        for(int i=0; i<cadena.length(); i++) {
            if (!cadena.substring(i,i+1).equals("&"))
                return false;
        }
        return true;
    }
}
