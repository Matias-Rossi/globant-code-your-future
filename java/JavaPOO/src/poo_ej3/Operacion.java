/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_ej3;

/**
 *
 * @author matias
 */
public class Operacion {
    private int numero1;
    private int numero2;
    
    // Constructores
    public Operacion(int num1, int num2) {
        this.numero1 = num1;
        this.numero2 = num2;
    }
    
    public Operacion(){}
    
    // Getters & Setters
    public int getNumero1() {
        return numero1;
    }

    public void setNumero1(int numero1) {
        this.numero1 = numero1;
    }

    public int getNumero2() {
        return numero2;
    }

    public void setNumero2(int numero2) {
        this.numero2 = numero2;
    }
    
    // Operaciones
    public void crearOperacion(int num1, int num2) {
        this.numero1 = num1;    //this. no es necesario ya que no se repite el nombre en los parametros
        this.numero2 = num2;
    }
    
    public int sumar() {
        return numero1 + numero2;
    }
    
    public int restar() {
        return numero1 - numero2;
    }
    
    public int multiplicar() {
        return numero1 * numero2;
    }
    
    public int dividir() {
        if(numero2 == 0) {
            System.out.println("Error: no se puede dividir por 0");
            return 0;
        }
        return numero1 / numero2;
    }
    
}
