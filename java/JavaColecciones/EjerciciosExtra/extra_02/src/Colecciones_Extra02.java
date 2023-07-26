import modelos.CantanteFamoso;
import servicios.CantanteService;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Colecciones_Extra02 {

    private static CantanteService cantanteService;
    public static void main(String[] args) {
        cantanteService = new CantanteService();

        for (int i = 0; i < 5; i ++) {
            cantanteService.agregarCantante(new CantanteFamoso("Cantante " + i, "disco " + i));
        }

        cantanteService.imprimirInformacionCantantes();

        Scanner scanner = new Scanner(System.in);
        boolean continuar = true;

        while(continuar) {
            int opcion = imprimirMenu(scanner);
            switch (opcion) {
                case 1: agregarCantante(scanner); break;
                case 2: cantanteService.imprimirInformacionCantantes(); break;
                case 3: eliminarCantante(scanner); break;
                default: continuar = false;
            }
        }
        System.out.println("\n# Cantantes finales #");
        cantanteService.imprimirInformacionCantantes();





    }

    private static void eliminarCantante(Scanner scanner) {
        System.out.print("Ingrese el nombre del cantante a eliminar: ");
        String nombre = scanner.nextLine();
        cantanteService.eliminarCantante(nombre);
    }

    private static void agregarCantante(Scanner scanner) {
        System.out.print("Ingrese el nombre del cantante a agregar: ");
        String nombre = scanner.nextLine();
        System.out.print("Ingrese su disco más vendido: ");
        String discoMasVendido = scanner.nextLine();
        cantanteService.agregarCantante(nombre, discoMasVendido);
    }

    private static int imprimirMenu(Scanner scanner) {
        System.out.println(" # Cantantes famosos #");
        System.out.println("\t1. Agregar un cantante");
        System.out.println("\t2. Ver todos los cantantes");
        System.out.println("\t3. Eliminar un cantante");
        System.out.println("\t4. Salir");
        System.out.print("Su elección: ");

        return Integer.parseInt(scanner.nextLine());
    }
}
