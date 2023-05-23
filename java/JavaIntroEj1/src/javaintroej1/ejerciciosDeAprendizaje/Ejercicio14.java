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
public class Ejercicio14 {
    /*
    Crea una aplicación que a través de una función nos convierta una cantidad de euros
    introducida por teclado a otra moneda, estas pueden ser a dólares, yenes o libras. La
    función tendrá como parámetros, la cantidad de euros y la moneda a converir que será
    una cadena, este no devolverá ningún valor y mostrará un mensaje indicando el cambio
    (void).
        El cambio de divisas es:
        * 0.86 libras es un 1 €
        * 1.28611 $ es un 1 €
        * 129.852 yenes es un 1 €
    */
    public static void main(String args[]) {
        Scanner leer = new Scanner(System.in);
        double euros;
        int opcionSeleccionada;
        String monedaSeleccionada;
        
        System.out.println("Introduzca la cantidad de euros a convertir:");
        euros = leer.nextDouble();
        
        System.out.println("A que moneda desea convertir?");
        System.out.println("1. Libras");
        System.out.println("2. Dolares");
        System.out.println("3. Yenes");
        
        opcionSeleccionada = leer.nextInt();
        
        switch(opcionSeleccionada) {
            case 1: monedaSeleccionada = "libras"; break;
            case 2: monedaSeleccionada = "dolares"; break;
            case 3: monedaSeleccionada = "yenes"; break;
            default: monedaSeleccionada = "yenes"; //no tengo ganas de manejar errores
        }
        
        convertirEuro(euros, monedaSeleccionada);
        
    }
    
    private static void convertirEuro(double euros, String moneda) {
        if(moneda.equals("libras"))
            System.out.println(euros + " euros son " + euros * 0.86 + " libras");
        
        else if(moneda.equals("dolares"))
            System.out.println(euros + " euros son " + euros * 1.28611 +  " dolares");
        
        else if (moneda.equals("yenes")) {
            System.out.println(euros + " euros son " + euros * 129.852 + " yenes");

        }
    }
}
