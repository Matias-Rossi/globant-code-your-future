/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_ej7;

import java.util.Scanner;

/**
 *
 * @author matias
 */
public class Persona {
    String nombre;
    int edad;
    char sexo;
    double altura;
    double peso;
    
    void crearPersona() {
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese el nombre de la persona:");
        this.nombre = leer.next();
        System.out.println("Ingrese la edad: ");
        this.edad = leer.nextInt();
        
        do {
            System.out.println("Ingrese el sexo (H/M/O):");
            char sexo = leer.next().charAt(0);
            if (sexo == 'H' || sexo == 'M' || sexo == 'O') {
                this.sexo = sexo;
                break;
            }
            else{   
                System.out.println("El sexo ingresado es inválido");
            }
            
        } while (true);
        
        System.out.println("Ingrese el peso:");
        this.peso = leer.nextDouble();
        System.out.println("Ingrese la altura (EN METROS):");
        this.altura = leer.nextDouble();
    }
    
    public int calcularIMC() {
        double imc = peso/Math.pow(altura, 2);
        System.out.println("IMC = " + imc);
        
        if(imc < 20)
            return -1;
        else if(imc > 25)
            return 1;
        else
            return 0;
    }
    
    public boolean esMayorDeEdad() {
        return edad >= 18;
    }
    
    // Constructores
    public Persona() {
    }

    public Persona(String nombre, int edad, char sexo, double altura, double peso) {
        this.nombre = nombre;
        this.edad = edad;
        this.sexo = sexo;
        this.peso = peso;
        this.altura = altura;
    }
    
    
    
    // Getters & Setters
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public char getSexo() {
        return sexo;
    }

    public void setSexo(char sexo) {
        this.sexo = sexo;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }
    
    
}
