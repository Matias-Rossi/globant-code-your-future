/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_ej5;

import java.util.Scanner;

/**
 *
 * @author matias
 */
public class Cuenta {
    private int numeroCuenta;
    private long dni;
    private int saldoActual;
    private double interes; 
    
    // Constructores
    public Cuenta(){}
    
    public Cuenta(int numeroCuenta, long dni, int saldoActual, double interes) {
        this.numeroCuenta = numeroCuenta;
        this.dni = dni;
        this.saldoActual = saldoActual;
        this.interes = interes; //Realmente innecesario
    }
    
    // Métodos pedidos
    public void crearCuenta() {
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingrese numero de cuenta:");
        numeroCuenta = leer.nextInt();
        
        System.out.println("Ingrese DNI:");
        dni = leer.nextLong();
        
        saldoActual = 0;
        
        System.out.println("Ingrese el interes:");
        interes = leer.nextDouble();
    }
    
    public void ingresar(double ingreso) { // pq el enunciado pide double si especifica que saldo es int?
        saldoActual += ingreso;
    }
    
    public void retirar(double retiro) {
        saldoActual = (int) Math.max( saldoActual-retiro , 0);
    }
    
    public void extraccionRapida(double retiro) {
        if(retiro > saldoActual * 0.2) {
            System.out.println("No es posible retirar más del 20% del sueldo mediante extracción rápida");
        }
        else {
            retirar(retiro);
            System.out.println("Retiro exitoso");
        } 
    }
    
    public void consultarSaldo() {
        System.out.println("Saldo actual: $" + saldoActual);
    }
    
    public void consultarDatos() {
        System.out.println("Numero de cuenta: " + numeroCuenta);
        System.out.println("DNI: " + dni);
        System.out.println("Saldo actual: " + saldoActual);
    }
    
    // Getter & Setters
    public int getNumeroCuenta() {
        return numeroCuenta;
    }

    public void setNumeroCuenta(int numeroCuenta) {
        this.numeroCuenta = numeroCuenta;
    }

    public long getDni() {
        return dni;
    }

    public void setDni(long dni) {
        this.dni = dni;
    }

    public int getSaldoActual() {
        return saldoActual;
    }

    public void setSaldoActual(int saldoActual) {
        this.saldoActual = saldoActual;
    }

    public double getInteres() {
        return interes;
    }

    public void setInteres(double interes) {
        this.interes = interes;
    }
    
    
}
