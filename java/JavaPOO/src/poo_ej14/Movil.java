/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_ej14;

import java.util.Scanner;

/**
 *
 * @author matias
 */
public class Movil {
    private String marca;
    private String modelo;
    private double precio;
    private int memoriaRam; //GB
    private int almacenamiento; //GB
    private int[] codigo = new int[7];
    
    public void cargarCelular() {
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingrese la marca del móvil: ");
        marca = leer.nextLine();
        System.out.println("Ingrese el modelo del móvil: ");
        modelo = leer.nextLine();
        System.out.println("Ingrese el precio del móvil: ");
        precio = leer.nextDouble();
        System.out.println("Ingrese la memoria RAM del móvil (en GB): ");
        memoriaRam = leer.nextInt();
        System.out.println("Ingrese la capacidad de almacenamiento del móvil (en GB): ");
        almacenamiento = leer.nextInt();
        
        ingresarCodigo(); //El enunciado no aclara, pero lo agrego igual
    }
    
    public void ingresarCodigo() {
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingrese los 7 dígitos, uno por vez, del código: ");
        for (int i = 0; i < 7; i++) {
            codigo[i] = leer.nextInt();
        }
    }
    
    // Constructores, getters & setters
    public Movil() {}

    public Movil(String marca, String modelo, double precio, int memoriaRam, int almacenamiento) {
        this.marca = marca;
        this.modelo = modelo;
        this.precio = precio;
        this.memoriaRam = memoriaRam;
        this.almacenamiento = almacenamiento;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getMemoriaRam() {
        return memoriaRam;
    }

    public void setMemoriaRam(int memoriaRam) {
        this.memoriaRam = memoriaRam;
    }

    public int getAlmacenamiento() {
        return almacenamiento;
    }

    public void setAlmacenamiento(int almacenamiento) {
        this.almacenamiento = almacenamiento;
    }

    public int[] getCodigo() {
        return codigo;
    }

    public void setCodigo(int[] codigo) {
        this.codigo = codigo;
    }
    
}
