import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Scanner;

public class Colecciones_Extra04 {
    // https://mapanet.eu/index.htm.
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Map<Integer, String> codigos = new HashMap<>();

        ingresarCiudades(codigos, 10, scanner);

        buscarPorCodigoPostal(codigos, scanner);

        imprimirDatos(codigos);

        System.out.println("\nIngresando otro código postal más:");
        ingresarCiudades(codigos, 1, scanner);

        eliminarCiudades(codigos, 3, scanner);

        imprimirDatos(codigos);
    }


    public static void ingresarCiudades(Map<Integer, String> codigos, int cantidad, Scanner scanner) {
        for (int i=0; i<cantidad; i++) {
            System.out.print("\n # Ingrese codigo postal: ");
            Integer codigo = Integer.parseInt(scanner.nextLine());
            System.out.print(" |-> Ingrese ciudad: ");
            String ciudad = scanner.nextLine();
            codigos.put(codigo, ciudad);
        }
    }

    private static void buscarPorCodigoPostal(Map<Integer, String> codigos, Scanner scanner) {
        System.out.print("\nIngrese el código postal a buscar: ");
        Integer codigo = Integer.parseInt(scanner.nextLine());

        if (codigos.containsKey(codigo)) {
            System.out.println("Ciudad del código introducido: " + codigos.get(codigo));
        } else {
            System.out.println("El código postal solicitado no ha sido cargado.");
        }

    }

    private static void imprimirDatos(Map<Integer, String> codigos) {
        System.out.println("\n # Codigo postal y ciudades # ");
        Iterator<Map.Entry<Integer, String>> iterator = codigos.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry<Integer, String> entrada = iterator.next();
            System.out.println(entrada.getKey() + ": " + entrada.getValue());
        }
    }
    private static void eliminarCiudades(Map<Integer, String> codigos, int cantidad, Scanner scanner) {
        for (int i=0; i<cantidad; i++) {
            System.out.print("Ingrese el nombre de la ciudad a eliminar: ");
            String ciudad = scanner.nextLine();

            if (eliminarCiudad(codigos, ciudad)) {
                System.out.println("Ciudad eliminada");
            } else {
                System.out.println("No se ha encontrado a la ciudad solicitada");
            }

        }
    }

    private static boolean eliminarCiudad(Map<Integer, String> codigos, String ciudad) {
        Iterator<Map.Entry<Integer, String>> iterator = codigos.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry<Integer, String> entrada = iterator.next();
            if (entrada.getValue().equalsIgnoreCase(ciudad)) {
                iterator.remove();
                return true;
            }
        }
        return false;
    }

}
