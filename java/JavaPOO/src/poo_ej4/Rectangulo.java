/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_ej4;

import java.util.Scanner;

/**
 *
 * @author matias
 */

/*
Crear una clase Rectángulo que modele rectángulos por medio de un 
    atributo privado base y un 
    atributo privado altura. 
La clase incluirá un 
método para crear el rectángulo con los datos del Rectángulo dados por el usuario. 
También incluirá un método para calcular la superficie del rectángulo y
un método para calcular el perímetro del rectángulo. 
Por último, tendremos un método que dibujará el rectángulo mediante
asteriscos usando la base y la altura. 
Se deberán además definir los métodos getters, setters y constructores correspondientes.

Superficie = base * altura / Perímetro = (base + altura) * 2.
*/

public class Rectangulo {
    private int base;
    private int altura;
    
    // Constructores
    public Rectangulo() {}
    
    public Rectangulo(int base, int altura) {
        this.base = base;
        this.altura = altura;
    }
    
    // Getters & Setters
    public int getBase() {
        return base;
    }

    public void setBase(int base) {
        this.base = base;
    }

    public int getAltura() {
        return altura;
    }

    public void setAltura(int altura) {
        this.altura = altura;
    }
    
    // Otros métodos
    public void crearRectangulo() {
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese la base del rectangulo:");
        base = leer.nextInt();
        
        System.out.println("Ingrese la altura del rectangulo:");
        altura = leer.nextInt();
    }
    
    public int calcularSuperficie() {
        return base * altura;
    }
    
    public int calcularPerimetro() {
        return (base + altura) * 2;
    }
    
    public void dibujarRectangulo() {
        for (int i = 0; i < altura; i++) {
            for (int j = 0; j < base; j++) {
                if(i==0 || i==altura-1 || j==0 || j==base-1)
                    System.out.print("* ");
                else
                    System.out.print("  ");
            }
            System.out.print("\n");
        }
    }
    
    
}
