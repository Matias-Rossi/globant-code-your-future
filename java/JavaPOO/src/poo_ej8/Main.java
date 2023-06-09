/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_ej8;

/**
 *
 * @author matias
 */
public class Main {
    public static void main(String[] args) {
        Cadena c = new Cadena("casa blanca");
        
        System.out.println("Cantidad vocales: " + c.mostrarVocales());
        
        c.invertirFrase();
        
        c.vecesRepetido('a');
        
        c.compararLongitud("casa negra");
        c.compararLongitud("casa morada");
        c.compararLongitud("casa azulada");
        
        c.unirFrases(" y limpia");
        c.reemplazar("z");
        
        if (c.contiene("b"))
            System.out.println("La frase contiene b");
        else
            System.out.println("La frase NO contiene b");
        
        if (c.contiene("x"))
            System.out.println("La frase contiene x");
        else
            System.out.println("La frase NO contiene x");

    }
}
