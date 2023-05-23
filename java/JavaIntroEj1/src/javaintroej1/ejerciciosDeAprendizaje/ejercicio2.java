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
public class ejercicio2 {
    //  Escribir un programa que pida tu nombre, lo guarde 
    //  en una variable y lo muestre por pantalla.
    
    public static void  main(String[] args) {
        String nombre;
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Escriba su nombre:");
        nombre = leer.nextLine();
        
        System.out.println("Hola, " + nombre);
    }
}
