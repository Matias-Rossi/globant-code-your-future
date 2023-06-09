/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_ej9;

/**
 *
 * @author matias
 */

/*

Realizar una clase llamada Matemática que tenga como atributos dos números reales con
los cuales se realizarán diferentes operaciones matemáticas. La clase deber tener un
constructor vacío, parametrizado y get y set. En el main se creará el objeto y se usará el
Math.random para generar los dos números y se guardaran en el objeto con su
respectivos set. Deberá además implementar los siguientes métodos:

a) Método devolverMayor() para retornar cuál de los dos atributos tiene el mayor valor

b) Método calcularPotencia() para calcular la potencia del mayor valor de la clase
elevado al menor número. Previamente se deben redondear ambos valores.

c) Método calculaRaiz(), para calcular la raíz cuadrada del menor de los dos valores.
Antes de calcular la raíz cuadrada se debe obtener el valor absoluto del número.                */


public class Matematica {
    double a;
    double b;
    
    public double devolverMayor() {
        return a > b? a : b;
    }
    
    public int calcularPotencia() {
        int mayor = (int) devolverMayor();
        int menor = (int) (a < b? a : b);
        
        return (int) Math.pow(mayor, menor);
    }
    
    public int calcularRaiz() {
        int menor = (int) (a < b? a : b);
        
        return (int) Math.sqrt(menor);
    }
    
    // Getters, setters y constructores
    
    public Matematica(double a, double b) {
        this.a = a;
        this.b = b;
    }

    public Matematica() {
    }
    

    public double getA() {
        return a;
    }

    public void setA(double a) {
        this.a = a;
    }

    public double getB() {
        return b;
    }

    public void setB(double b) {
        this.b = b;
    }
    
    
    
}
