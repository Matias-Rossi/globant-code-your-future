import modelos.Libreria;

import java.util.Scanner;

public class Colecciones_Extra03 {
    private static Libreria libreria = new Libreria();
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        boolean continuar = true;

        while (continuar) {
            int opcion = imprimirMenu(scanner);
            switch (opcion) {
                case 1: agregarLibro(scanner) ;break;
                case 2: prestarLibro(scanner) ;break;
                case 3: devolverLibro(scanner) ;break;
                default: continuar = false; break;
            }
        }
    }

    private static void agregarLibro(Scanner scanner) {
        System.out.print("Ingrese el título del nuevo libro: ");
        String titulo = scanner.nextLine();
        System.out.print("Ingrese el autor: ");
        String autor = scanner.nextLine();
        System.out.print("Ingrese la cantidad de ejemplares: ");
        int cantEjemplares = Integer.parseInt(scanner.nextLine());

        libreria.agregarLibro(titulo, autor, cantEjemplares);
    }

    private static void prestarLibro(Scanner scanner) {
        System.out.print("Ingrese el título del libro a prestar: ");
        String titulo = scanner.nextLine();
        boolean prestadoExitosamente = libreria.prestamo(titulo);

        if (prestadoExitosamente)
            System.out.println("El préstamo ha sido cargado con éxito");
        else
            System.out.println("No se ha encontrado al libro o no hay ejemplares disponibles");
    }

    private static void devolverLibro(Scanner scanner) {
        System.out.print("Ingrese el título del libro devuelto: ");
        String titulo = scanner.nextLine();
        boolean devueltoExitosamente = libreria.devolucion(titulo);

        if (devueltoExitosamente) {
            System.out.println("El libro ha sido devuelto con éxito");
        }
        else {
            System.out.println("No se ha encontrado al libro o no ha sido prestado");
        }
    }

    private static int imprimirMenu(Scanner scanner) {
        System.out.println(" # Elija una opción #");
        System.out.println("\t 1. Agregar libro");
        System.out.println("\t 2. Prestar libro");
        System.out.println("\t 3. Devolver libro");
        System.out.println("\t 4. Salir");
        System.out.print("Su selección: ");
        return Integer.parseInt(scanner.nextLine());
    }
}
