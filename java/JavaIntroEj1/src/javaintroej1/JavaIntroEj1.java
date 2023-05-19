/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaintroej1;

import java.util.Scanner;

/**
 *
 * @author matias
 */
public class JavaIntroEj1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       //ejercicio4();
       //ejercicio5();
       //ejercicio6();
       //ejercicio7();
       //ejercicio8();
       //ejercicio9();
       //ejercicio10();
       //ejercicio11();
       //ejercicio12();
       ejercicio13();
    }
    
    private static void ejercicio4() {
        String nombre = "Matias";
        short edad = 21;
        System.out.println(nombre + " " + edad);
    }
    
    private static void ejercicio5() {
        boolean verdadero;
        double doble;
        char caracter;
        Scanner leer = new Scanner(System.in);
        verdadero = leer.nextBoolean();
        doble = leer.nextDouble();
        caracter = leer.next().charAt(0);
        
        System.out.println(verdadero + " ; " + doble  + " ; " + caracter);
    }
    
    private static void ejercicio6() {
        Scanner leer = new Scanner(System.in);
        int num1 = leer.nextInt();
        int num2 = leer.nextInt();
        
        if(num1 > 25 || num2 > 25) {
            System.out.println("Uno o ambos numeros son mayores a 25");
        } else {
            System.out.println("Ningun numero es mayor a 25");
        }
    }
    
    private static void ejercicio7(){
        /*
            Considera que estás desarrollando una web para una empresa que fabrica motores (suponemos
            que se trata del tipo de motor de una bomba para mover fluidos). Definir una variable tipoMotor y
            permitir que el usuario ingrese un valor entre 1 y 4. El programa debe mostrar lo siguiente:
            - Si el tipo de motor es 1, mostrar un mensaje indicando “La bomba es una bomba de agua”.
            - Si el tipo de motor es 2, mostrar un mensaje indicando “La bomba es una bomba de
            gasolina”.
            - Si el tipo de motor es 3, mostrar un mensaje indicando “La bomba es una bomba de
            hormigón”.
            - Si el tipo de motor es 4, mostrar un mensaje indicando “La bomba es una bomba de pasta
            alimenticia”.
            - Si no se cumple ninguno de los valores anteriores mostrar el mensaje “No existe un valor
            válido para tipo de bomba”
        */
        Scanner leer = new Scanner(System.in);
        short tipoMotor = leer.nextShort();
        switch(tipoMotor) {
            case 1: 
                System.out.println("La bomba es una bomba de agua");
                break;
            case 2:
                System.out.println("La bomba es una bomba de gasolina");
                break;
            case 3:
                System.out.println("La bomba es una bomba de hormigón");
                break;
            case 4:
                System.out.println("La bomba es una bomba de pasta alimenticia");
                break;
            default: 
                System.out.println("No existe un valor válido para tipo de bomba");
        }
    }
    
    private static void ejercicio8(){
        /*
            Escriba un programa que valide si una nota está entre 0 y 10, sino 
            está entre 0 y 10 la nota se pedirá de nuevo hasta que la nota sea correcta.
        */
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingrese la nota:");
        short nota = leer.nextShort();
        while (nota < 0 || nota > 10) {
            System.out.println("Valor inválido, ingrese la nota entre 1 y 10:");
            nota = leer.nextShort();
        }
    }
    
    private static void ejercicio9() {
        /*
            Escriba un programa que lea 20 números. Si el número leído es igual a cero se debe salir del
            bucle y mostrar el mensaje "Se capturó el numero cero". El programa deberá calcular y mostrar el
            resultado de la suma de los números leídos, pero si el número es negativo no debe sumarse.
        */
        Scanner leer = new Scanner(System.in);
        short cantidadLeidos = 0;
        int valorLeido;
        int suma = 0;
        
        while(cantidadLeidos < 20) {
            
            System.out.println("Ingrese un numero (" + (cantidadLeidos+1) + "/20)");
            valorLeido = leer.nextInt();
            
            cantidadLeidos++;
            
            if (valorLeido == 0) {
                System.out.println("Se capturo el numero cero");
                break;
            } else if(valorLeido < 0) {
                continue;
            } else {
                suma += valorLeido;
            }
        }
        System.out.println("La suma es " + suma);
    }
    
    private static void ejercicio10() {
        /*
            Realizar un programa que lea 4 números (comprendidos entre 1 y 20) e imprima el número
            ingresado seguido de tantos asteriscos como indique su valor. Por ejemplo:
            5 *****
            3 ***
            11 ***********
            2 **
        */
        
        // NOTA: Con vectores, funciones (o ambas) seria mucho mas prolijo 
        
        short n1, n2, n3, n4;
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese 4 numeros entre 1 y 20, separados por un <ENTER>:");
        n1 = leer.nextShort();
        n2 = leer.nextShort();
        n3 = leer.nextShort();
        n4 = leer.nextShort();
        
        System.out.print(n1 + " ");
        for (int i = 0; i < n1; i++) {
            System.out.print("*");
        }
        
        System.out.print("\n" + n2 + " ");
        for (int i = 0; i < n2; i++) {
            System.out.print("*");
        }
        
        System.out.print("\n" + n3 + " ");
        for (int i = 0; i < n3; i++) {
            System.out.print("*");
        }
        
        System.out.print("\n" + n4 + " ");
        for (int i = 0; i < n4; i++) {
            System.out.print("*");
        }
    }
    
    private static void ejercicio11() {
        /*
            Escribir un programa que procese una secuencia de caracteres ingresada por teclado y terminada
            en punto, y luego codifique la palabra o frase ingresada de la siguiente manera: cada vocal se
            reemplaza por el carácter que se indica en la tabla y el resto de los caracteres (incluyendo a las
            vocales acentuadas) se mantienen sin cambios.
                a -> @ ; e -> # ; i -> $ ; o -> % ; u -> *
            Realice un subprograma que reciba una secuencia de caracteres y retorne la codificación
            correspondiente. Utilice la estructura “según” para la transformación.
        */
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese una cadena terminada en punto:");
        String cadenaEntrada = leer.nextLine();
        String cadenaSalida = "";
        
        for (int i = 0; cadenaEntrada.charAt(i) != '.'; i++) {
            char caracter = cadenaEntrada.charAt(i);
            switch (caracter) {
                case 'A':
                case 'a': caracter = '@';break;
                case 'E':
                case 'e': caracter = '#';break;
                case 'I':
                case 'i': caracter = '$';break;
                case 'O':
                case 'o': caracter = '%';break;
                case 'U':
                case 'u': caracter = '*';break;
                default: //nada
            }
            cadenaSalida += caracter; //concat no me funciono xd
        }
        
        System.out.println(cadenaSalida); 
    }
    
    private static void ejercicio12() {
        /*
            Crea un procedimiento EsMultiplo que reciba los dos números pasados por el usuario, validando
            que el primer numero múltiplo del segundo y e imprima si el primer numero es múltiplo del
            segundo, sino informe que no lo son.
        */
        esMultiplo(8, 4);
        esMultiplo(9, 4);
        
        
    }
    private static void esMultiplo(int multiplo, int divisor) {
        if(multiplo % divisor == 0) {
            System.out.println(multiplo + " es multiplo de " + divisor);
        } else {
            System.out.println(multiplo + " no es multiplo de " + divisor);
        }
    }
    
    private static void ejercicio13() {
        // Crea un vector llamado ‘Equipo’ cuya dimensión sea la cantidad de compañeros de equipo y
        // define su tipo de dato de tal manera que te permita alojar sus nombres más adelante.
        // 14. Utilizando un Bucle for, aloja en el vector Equipo, los nombres de tus compañeros de equipo
        Scanner leer = new Scanner(System.in);
        String[] equipo = new String[5];
        
        for (int i = 0; i < 5; i++) {
            System.out.println("Ingrese el nombre del integrante: ");
            equipo[i] = leer.nextLine();
        }
        
        
    }
    
}
