/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaintroej1.ejerciciosExtra;

import java.util.Scanner;
import static javaintroej1.ejerciciosExtra.Extra20.llenarAleatoriamente;

/**
 *
 * @author matias
 */
public class Extra21 {
    /*
    Los profesores del curso de programación de Egg necesitan llevar un registro de las notas
    adquiridas por sus 10 alumnos para luego obtener una cantidad de aprobados y
    desaprobados. Durante el periodo de cursado cada alumno obtiene 4 notas, 2 por trabajos
    prácticos evaluativos y 2 por parciales. Las ponderaciones de cada nota son:
        - Primer trabajo práctico evaluativo 10%
        - Segundo trabajo práctico evaluativo 15%
        - Primer Integrador 25%
        - Segundo integrador 50%
    Una vez cargadas las notas, se calcula el promedio y se guarda en el arreglo. Al final del
    programa los profesores necesitan obtener por pantalla la cantidad de aprobados y
    desaprobados, teniendo en cuenta que
    */
    
    static public void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        double primerTP;
        double segundoTP;
        double primerIntegrador;
        double segundoIntegrador;
        double[] promedioFinal = new double[10];
        
        for (int i = 0; i < 10; i++) {
            System.out.println("## Cargando notas del alumno "+ (i+1) +"##");
            
            System.out.print("Primer TPE: "); 
            primerTP = leer.nextDouble();
            
            System.out.print("Segundo TPE: ");
            segundoTP = leer.nextDouble();
            
            System.out.print("Primer integrador: ");
            primerIntegrador = leer.nextDouble();
            
            System.out.print("Segundo integrador: ");
            segundoIntegrador = leer.nextDouble();
            
            promedioFinal[i] = primerTP * 0.1 + segundoTP * 0.15 + primerIntegrador * 0.25 + segundoIntegrador * 0.50;
        }
        
        System.out.println("");
        
        int aprobados = contarAprobados(promedioFinal);
        
        System.out.println("Aprobados: " + aprobados);
        System.out.println("Desaprobados: " + (10-aprobados));
        
    }

    private static int contarAprobados(double[] promedioFinal) {
        int aprobados = 0;
        for (int i = 0; i < 10; i++) {
            if(promedioFinal[i] >= 7)
                aprobados++;
        }
        return aprobados;
    }
    
}
