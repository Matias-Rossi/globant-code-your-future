/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_extra4;

import java.util.Scanner;

/**
 *
 * @author matias
 */

// Main al final de esta clase como método estático

public class NIF {
    long dni;
    char letraDigitoVerificador;
    
    public void crearNif() {
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese el DNI: ");
        dni = leer.nextLong();
        
        actualizarLetra();
    }
    
    private void actualizarLetra() {
        int resto = (int) (dni % 23);
        char[] letras = {'T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E'};
        
        letraDigitoVerificador = letras[resto];
    }
    
    public void mostrar() {
        System.out.println("NIF: " + dni + "-" + letraDigitoVerificador);
    }
    
    
    // Constructores, getters y setters
    public NIF() {
    }

    public long getDni() {
        return dni;
    }

    public void setDni(long dni) {
        this.dni = dni;
    }

    public char getLetraDigitoVerificador() {
        return letraDigitoVerificador;
    }

    public void setLetraDigitoVerificador(char letraDigitoVerificador) {
        this.letraDigitoVerificador = letraDigitoVerificador;
    }
    
    static public void main(String[] args) {
        //long dni = 395469;
        
        NIF nif = new NIF();
        nif.crearNif();
        nif.mostrar();
    }
    
}
