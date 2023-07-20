import servicios.PaisService;

import java.util.Scanner;

public class Main_ColeccionesEj5 {

    private static PaisService paisService;

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        paisService = new PaisService();

        boolean continuar = true;

        while (continuar) {
            cargarPais(scanner);
            continuar = deseaContinuarCarga(scanner);
        }
        System.out.println("\n # Paises #");
        paisService.imprimirPaises();

        System.out.println("\n # Paises ordenados 😎 #");
        paisService.imprimirPaisesOrdenados();

        if (eliminarPais(scanner)) {
            paisService.imprimirPaises();
        }

    }

    private static void cargarPais(Scanner scanner) {
        System.out.print("Ingrese un pais: ");
        boolean agregado = paisService.agregarPais(scanner.nextLine());
        if (agregado) {
            System.out.println("Pais agregado exitosamente.");
        } else {
            System.out.println("El pais ya se encuentra cargado.");
        }
    }

    private static boolean deseaContinuarCarga(Scanner scanner) {
        System.out.print("Desea cargar otro país? (S/N): ");
        return scanner.nextLine().equalsIgnoreCase("S");
    }

    private static boolean eliminarPais(Scanner scanner) {
        System.out.print("Ingrese el nombre del país a eliminar: ");
        boolean eliminado = paisService.eliminarPais(scanner.nextLine());

        if (eliminado) {
            System.out.println("El país ha sido eliminado correctamente");
        } else {
            System.out.println("El país no se ha encontrado");
        }

        return eliminado;
    }
}
