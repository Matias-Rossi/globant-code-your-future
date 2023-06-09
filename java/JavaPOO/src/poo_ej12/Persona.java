/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_ej12;

import java.util.Date;
import java.util.Scanner;

/**
 *
 * @author matias
 */
public class Persona {
    String nombre;
    Date fechaNacimiento;
    
    public void crearPersona() {
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese el nombre de la persona: ");
        this.nombre = leer.nextLine();
        
        System.out.println("Ingrese (solo) el dia de nacimiento: ");
        int dia = leer.nextInt();
        
        System.out.println("Ingrese el mes de nacimiento: ");
        int mes = leer.nextInt();
        
        System.out.println("Ingrese el año de nacimiento: ");
        int anio = leer.nextInt();
        
        this.fechaNacimiento = Date(anio-1900, mes, dia);
    }
    
    public int calcularEdad() {
        return new Date().getYear() - fechaNacimiento.getYear();
    }
    
    public boolean menorQue(int edad) {
        return calcularEdad() < edad;
    }
       
    public void mostrarPersona() {
        System.out.println("Nombre: " + nombre);
        System.out.print("Fecha de nacimiento: ");
        System.out.print(fechaNacimiento.getDay() + "/");
        System.out.print(fechaNacimiento.getMonth() + "/");
        System.out.print(fechaNacimiento.getYear() + "\n");
    }
    
    // Constructores, getters & setters
    public Persona() {}
    
    
    public Persona(String nombre, Date fechaNacimiento) {
        this.nombre = nombre;
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }
    
}
