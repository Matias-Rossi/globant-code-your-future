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
public class Cadena {
    String frase;
    int longitud;
    
    // Métodos principales
    public int mostrarVocales() {
        int cantVocales = 0;
        
        for (int i = 0; i < longitud; i++) {
            if(esVocal(frase.charAt(i)))
                cantVocales++;
        }
        
        return cantVocales;
    }
    
    public void invertirFrase() {
        // Correspondería hacer con StringBuilder, lo hago con String por fines didácticos
        String fraseInvertida = "";
        
        for (int i = 0; i < longitud; i++) {
            fraseInvertida = frase.charAt(i) + fraseInvertida;
        }
        
        System.out.println(fraseInvertida);
    }
    
    public void vecesRepetido(char letra) {
        int contador = 0;
        
        for (int i = 0; i < longitud; i++) {
            if (frase.charAt(i) == letra)
                contador++;
        }
        
        System.out.println("El carácter '"+letra+"' se repite 4 veces");
    }
    
    public void compararLongitud(String frase) {
        if (longitud > frase.length())
            System.out.println("La frase es más corta que la que ya se tenía");
        else if (longitud < frase.length())
            System.out.println("La frase es más larga que la que ya se tenía");
        else
            System.out.println("La frase introducida es de la misma longitud que la que se tenía");
    }
    
    public void unirFrases(String frase) {
        setFrase(this.frase + frase);
        System.out.println("La frase resultante es " + this.frase);
    }
    
    //Debería ser char, pero el enunciado especifica string
    public void reemplazar(String letra) { 
        System.out.println("Reemplazando letras 'a':" + frase.replace('a', letra.charAt(0)));  
    }
    
    // Funciona con frases además de letras, debería ser char sino
    public boolean contiene(String letra) {
        return frase.contains(letra);
    }
    
    
    
    // Métodos auxiliares
    private boolean esVocal(char letra) {
        switch(letra) {
            case 'a':
            case 'e':
            case 'i':
            case 'o':
            case 'u': return true;
            default: return false;        
        }
    }
    
    // Constructores, Getters & Setters
    public Cadena(String frase) {
        this.frase = frase;
        longitud = frase.length();
    }
    
    public Cadena(){}
    
    public void setFrase(String frase) {
        this.frase = frase;
        longitud = frase.length();
    }
    
    public String getFrase() {
        return this.frase;
    }
    
    public int getLongitud(){
        return longitud;
    }
    
}
