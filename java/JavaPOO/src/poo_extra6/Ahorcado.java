/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_extra6;

import java.util.Scanner;

/**
 *
 * @author matias
 */
public class Ahorcado {
    char[] palabraABuscar;
    int cantLetrasEncontradas;
    int jugadasRestantes;
    // Lo llamo asi porque luego pide ir restandole 1 a medida que se desarrolla el juego
    
    public void crearJuego() {
        Scanner leer = new Scanner(System.in);
        
        System.out.print("Ingrese la palabra a encontrar: ");
        String palabraABuscarString = leer.next();
        System.out.print("Ingrese la cantidad máxima de jugadas: ");
        jugadasRestantes = leer.nextInt();
        
        int longitudPalabra = palabraABuscarString.length();
        
        palabraABuscar = new char[longitudPalabra];
        for (int i = 0; i < longitudPalabra; i++) {
            palabraABuscar[i] = palabraABuscarString.charAt(i);
        }
        
        cantLetrasEncontradas = 0;
    }
    
    private int getLongitudPalabra() {
        return palabraABuscar.length;
    }
    
    public void longitud() {
        System.out.println("Longitud de la palabra a buscar: " + getLongitudPalabra());
    }
    
    // Dice que la funcion encontradas deber retornar true o false, pero no tiene mucho sentido
    public boolean buscar(char letra) {
        boolean encontrada = false;
        for (int i = 0; i < getLongitudPalabra() && !encontrada; i++) {
            if (palabraABuscar[i] == letra)
                encontrada = true;
        }
        if (encontrada)
            System.out.println("La letra '" + letra + "' está contenida en la palabra");
        else 
            System.out.println("La letra '" + letra + "' NO está en la palabra");
        
        return encontrada;
    }
    
    public boolean encontradas(char letra) {
        boolean encontrada = buscar(letra);
        
        if (encontrada) 
            cantLetrasEncontradas++;
        else
            jugadasRestantes = jugadasRestantes - 1;
        
        System.out.println("Letras encontradas: " + cantLetrasEncontradas);
        System.out.println("Letras faltantes: " + (getLongitudPalabra() - cantLetrasEncontradas));
        
        return encontrada;
    }
    
    public void intentos() {
        System.out.println("Número de oportunidades restantes: " + jugadasRestantes);
    }
    
    public void juego() {
        Scanner leer = new Scanner(System.in);
        
        while (true) {
            System.out.print("Ingrese una letra: ");
            String letra = leer.next();

            System.out.print("Mensaje: ");
            encontradas(letra.charAt(0));

            if(jugadasRestantes == 0) {
                System.out.println("Has perdido");
                break;
            } else if(cantLetrasEncontradas == getLongitudPalabra()) {
                System.out.println("Has ganado");
                break;
            } else {
                intentos();
                System.out.println("--------------------------------------");
            }
        }
        
        
    }
    

    // Constructores

    public Ahorcado() {
    }

    public Ahorcado(char[] palabraABuscar, int cantLetrasEncontradas, int jugadasRestantes) {
        this.palabraABuscar = palabraABuscar;
        this.cantLetrasEncontradas = cantLetrasEncontradas;
        this.jugadasRestantes = jugadasRestantes;
    }
    
    // Main
    
    static public void main(String[] args) {
        Ahorcado ahorcado = new Ahorcado();
        ahorcado.crearJuego();
        ahorcado.juego();
    }
    
}
