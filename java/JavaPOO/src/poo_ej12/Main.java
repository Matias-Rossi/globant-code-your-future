/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_ej12;

/**
 *
 * @author matias
 */
public class Main {
    static public void main(String[] args) {
        Persona p = new Persona();
        p.crearPersona();
        System.out.println("La edad de la persona es " + p.calcularEdad());
        
        if(p.menorQue(18)) 
            System.out.println("La persona es menor de edad");
        else 
            System.out.println("La persona es mayor de edad");
        
        p.mostrarPersona();
    }
}
