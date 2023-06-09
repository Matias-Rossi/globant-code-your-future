package poo_ej11;


import java.util.Date;
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

/*
    En este ejercicio deberemos instanciar en el main, una fecha usando la clase
    Date, para esto vamos a tener que crear 3 variables, dia, mes y anio que se le pedirán al
    usuario para poner el constructor del objeto Date. Una vez creada la fecha de tipo Date,
    deberemos mostrarla y mostrar cuantos años hay entre esa fecha y la fecha actual, que
    se puede conseguir instanciando un objeto Date con constructor vacío.

    Ejemplo fecha: Date fecha = new Date(anio, mes, dia);

    Ejemplo fecha actual: Date fechaActual = new Date();
*/

public class Ejercicio_11 {
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingrese el dia: ");
        int dia = leer.nextInt();
        leer.nextLine();
        
        System.out.println("Ingrese el mes: ");
        int mes = leer.nextInt();
        leer.nextLine();
        
        System.out.println("Ingrese el año: ");
        int anio = leer.nextInt();
        
        System.out.println(anio + "/" + mes + "/" + dia);
        
        Date fecha = new Date(anio-1900, mes, dia);
        
        System.out.println(fecha);
        
        Date fechaActual = new Date();
        
        int difAnios = fechaActual.getYear() - fecha.getYear();
        
        System.out.println("Pasaron " + difAnios + " años");
    }
}
