import servicios.InterfazService;
import servicios.ProductoService;

import java.io.IOException;
import java.util.Scanner;

public class Main_ColeccionesEj6 {

    private static Scanner scanner = new Scanner(System.in);
    private static ProductoService productoService = new ProductoService();
    private static InterfazService interfazService = new InterfazService();

    public static void main(String[] args) {

        boolean salir = false;

        while (!salir) {
            int opcion = elegirOpcionMenu();

            switch (opcion) {
                case 1: crearProducto(); break;
                case 2: modificarPrecioProducto(); break;
                case 3: eliminarProducto(); break;
                case 4: listarProductos(); break;
                default: salir = true;
            }

        }

        System.out.println("\nGracias vuelva prontos!");

    }
    private static void crearProducto() {
        String nombre = interfazService.ingresarNombreProducto();
        double precio = interfazService.ingresarPrecioProducto();
        boolean productoEsNuevo = productoService.agregarProducto(nombre, precio);

        if (productoEsNuevo)
            System.out.println("Creado exitosamente el producto " + nombre);
        else
            System.out.println("El producto " + nombre + " ya existía y fue reemplazado");
    }

    private static void modificarPrecioProducto() {
        String nombre = interfazService.ingresarNombreProducto();
        double precio = interfazService.ingresarPrecioProducto();
        boolean productoEncontrado = productoService.modificarPrecio(nombre, precio);

        if (productoEncontrado)
            System.out.println("El precio del producto " + nombre + " ha sido reemplazado por " + precio);
        else
            System.out.println("El producto " + nombre + " no existe");
    }

    private static void eliminarProducto() {
        String nombre = interfazService.ingresarNombreProducto();
        boolean productoEncontrado = productoService.eliminarProducto(nombre);

        if (productoEncontrado)
            System.out.println("El producto " + nombre + " fue eliminado exitosamente");
        else
            System.out.println("El producto " + nombre + " no se ha podido encontrar");
    }

    private static void listarProductos() {
        System.out.println();

        productoService.mostrarProductos();

        System.out.println("\nPresione <Enter> para continuar...");
        scanner.nextLine();
    }

    static private int elegirOpcionMenu() {
        System.out.println("\n# Operaciones sobre productos #");
        System.out.println("\t1. Introducir un producto");
        System.out.println("\t2. Modificar el precio de un producto");
        System.out.println("\t3. Eliminar un producto");
        System.out.println("\t4. Listar productos existentes");
        System.out.println("\t5. (o cualquier otro número) para salir");
        System.out.print("Ingrese una opción: ");

        String respuesta = scanner.nextLine();
        boolean respuestaValida = Character.isDigit(respuesta.charAt(0));

        while (!respuestaValida) {
            System.out.print("Respuesta inválida, introduzca un número: ");
            respuesta = scanner.nextLine();
            respuestaValida = Character.isDigit(respuesta.charAt(0));
        }

        return Integer.parseInt(respuesta);
    }

}
