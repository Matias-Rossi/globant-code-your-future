/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaintroej1.ejerciciosExtra;

/**
 *
 * @author matias
 */
public class Extra2 {
    /*
    Declarar cuatro variables de tipo entero A, B, C y D y asignarle un valor diferente a cada
    una. A continuación, realizar las instrucciones necesarias para que: B tome el valor de C, C
    tome el valor de A, A tome el valor de D y D tome el valor de B. Mostrar los valores
    iniciales y los valores finales de cada variable. Utilizar sólo una variable auxiliar.
    */
    static public void main(String args[]) {
        int a=1, b=2, c=3, d=4, aux;
        
        aux = b;
        b = c;
        c = a;
        a = d;
        d = aux;
        
        System.out.println("a = " + a);
        System.out.println("b = " + b);
        System.out.println("c = " + c);
        System.out.println("d = " + d);
    }
}
