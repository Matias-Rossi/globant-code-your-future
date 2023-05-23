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
public class Ejercicio11 {
    /*
    Realizar un programa que pida dos números enteros positivos por teclado y muestre por
    pantalla el siguiente menú:
    
    |   MENU            |
    |   1. Sumar        |
    |   2. Restar       |
    |   3. Multiplicar  |
    |   4. Dividir      |
    |   5. Salir        |
    |   Elija opcion:   |
    
    El usuario deberá elegir una opción y el programa deberá mostrar el resultado por pantalla
    y luego volver al menú. El programa deberá ejecutarse hasta que se elija la opción 5.
    Tener en cuenta que, si el usuario selecciona la opción 5, en vez de salir del programa
    directamente, se debe mostrar el siguiente mensaje de confirmación: ¿Está seguro que
    desea salir del programa (S/N)? Si el usuario selecciona el carácter ‘S’ se sale del
    programa, caso contrario se vuelve a mostrar el menú.
    */
    
    
    static public void main(String args[]) {
            
        Scanner leer = new Scanner(System.in);
        float a, b;
        int opcionMenu;
        boolean continuar = true;
    
        System.out.println("Ingrese un numero:");
        a = leer.nextInt();
        
        System.out.println("Ingrese otro numero:");
        b = leer.nextInt();
        
        while(continuar) {
            imprimirMenu();
            opcionMenu = leer.nextInt();
            switch(opcionMenu) {
                case 1: System.out.println(a+b); break;
                case 2: System.out.println(a-b); break;
                case 3: System.out.println(a*b); break;
                case 4: System.out.println(a/b); break;
                case 5: continuar = pedirConfirmacionSalida(leer); break;
                default: System.out.println("Eso no estaba entre las opciones");
            }
            
        }
        
    }
    
    static private void imprimirMenu() {
        System.out.println(" # MENU #");
        System.out.println("1. Sumar");
        System.out.println("2. Restar");
        System.out.println("3. Multiplicar");
        System.out.println("4. Dividir");
        System.out.println("5. Salir");
        System.out.println("Elija opcion");
    }
    
    static private boolean pedirConfirmacionSalida(Scanner leer) {
        System.out.println("Esta seguro que desea salir del programa? (S/N)");
        
        String respuesta = leer.next();
        
        if (respuesta.toUpperCase().equals("S"))
            return false;
        else
            return true;
    }
}
