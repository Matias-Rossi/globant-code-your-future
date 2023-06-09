/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_ej7;

/**
 *
 * @author matias
 */
public class Main {
    public static void main(String[] args) {
        Persona p1 = new Persona("Matias", 21, 'H', 1.70, 75);
        Persona p2 = new Persona("Axel", 21, 'H', 1.60, 95);
        Persona p3 = new Persona("Belén", 20, 'M', 1.80, 60);
        Persona p4 = new Persona("Luciana", 20, 'M', 1.75, 55);
        
        Persona[] personas = {p1, p2, p3, p4};
        int cantPersonas = personas.length;
        
        int cantMayores = 0, cantSobrepeso = 0, cantDebajoPeso = 0;
        
        for (int i = 0; i < cantPersonas; i++) {
            System.out.println("\n# " + personas[i].getNombre() + " #");
            
            switch (interpretarIMC(personas[i])) {
                case 1: cantSobrepeso++; break;
                case -1: cantDebajoPeso++; break;
            }
            
            if (personas[i].esMayorDeEdad()) {
                cantMayores++;
                System.out.println("Es mayor de edad");
            }
            else {
                System.out.println("Es menor de edad");
            }
        }
        
        System.out.println("\nEl " + 100*(cantMayores/cantPersonas) + "% de las personas son mayores de edad" );
        System.out.println("El " + 100*((cantPersonas-cantMayores)/cantPersonas) + "% de las personas son menores de edad" );
       
       // Ya saben como sigue
    
    }

    private static int interpretarIMC(Persona persona) {
        int imc = persona.calcularIMC();
        
        switch (imc) {
            case -1: System.out.println("Está por debajo de su peso ideal"); break;
            case 0: System.out.println("Está en su peso ideal"); break;
            case 1: System.out.println("Está por encima de su peso ideal"); break;
        }
        
        return imc;
    }
}
