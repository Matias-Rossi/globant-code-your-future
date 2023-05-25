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
public class Extra24 {
    /*
    Realizar un programa que complete un vector con los N primeros números de la sucesión
    de Fibonacci. Recordar que la sucesión de Fibonacci es la sucesión de los siguientes
    números:
    1, 1, 2, 3, 5, 8, 13, 21, 34, ...
    */
    
    static public void main(String[] args) {
        short n=9;
        
        for(int i=1; i<=n; i++) {
            System.out.print(fibonacci(i) + ", ");
        }
        
        
    }

    private static int fibonacci(int num) {
        if(num <= 2) 
            return 1;    
        else    
        return fibonacci(num-1) + fibonacci(num-2);
    }
    
}
