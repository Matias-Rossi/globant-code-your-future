import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

public class Colecciones_Extra01 {

    // Intencionalmente calculo suma y promedio al final
    public static void main(String[] args) {
        List<Integer> numeros = new ArrayList<>();
        Scanner scanner = new Scanner(System.in);
        boolean continuar = true;

        System.out.println("* Ingrese un -99 para finalizar");

        while (continuar) {
            System.out.print("Ingrese un número: ");
            int numeroLeido = scanner.nextInt();

            if (numeroLeido == -99) {
                continuar = false;
            } else {
                numeros.add(numeroLeido);
            }
        }

        imprimirNumeros(numeros);
        System.out.println("Suma: " + calcularSuma(numeros));

        if (numeros.size() > 0)
            System.out.println("Promedio: " + calcularPromedio(numeros));
    }



    private static void imprimirNumeros(List<Integer> numeros) {
        Iterator<Integer> iterador = numeros.iterator();

        System.out.print("Numeros: ");

        while(iterador.hasNext()) {
            System.out.print(iterador.next() + " ");
        }

        System.out.println();
    }


    private static int calcularSuma(List<Integer> numeros) {
        int suma = 0;
        Iterator<Integer> iterador = numeros.iterator();

        while(iterador.hasNext()) {
            suma += iterador.next();
        }

        return suma;
    }

    private static int calcularPromedio(List<Integer> numeros) {
        return calcularSuma(numeros) / numeros.size();
    }
}
