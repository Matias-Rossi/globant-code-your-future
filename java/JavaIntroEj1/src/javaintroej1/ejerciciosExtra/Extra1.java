package javaintroej1.ejerciciosExtra;


import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author matias
 */
public class Extra1 {
    /*
    Dado un tiempo en minutos, calcular su equivalente en días y horas. Por ejemplo, si el
    usuario ingresa 1600 minutos, el sistema debe calcular su equivalente: 1 día, 2 horas.
    */
    
    static public void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        
        int dias, horas, minutos;
        
        System.out.println("Ingrese un tiempo en minutos");
        int minutosIntroducidos = leer.nextInt();
        
        minutos = minutosIntroducidos % 60;
        horas = minutosIntroducidos / 60;
        dias = horas / 24;
        horas = horas % 24;
        
        System.out.println("Dias: " + dias);
        System.out.println("Horas: " + horas);
        //System.out.println("Minutos: " + minutos);
    }
}
