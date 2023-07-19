

import java.awt.*;
import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        RazaService razaService = new RazaService();
        MenuService menuService = new MenuService();

        Scanner scanner = new Scanner(System.in);

        boolean continuar = true;

        while (continuar) {
            String nuevaRaza = menuService.pedirRaza(scanner);
            razaService.agregarRaza(nuevaRaza);

            continuar = menuService.usuarioDeseaContinuar(scanner);
        }

        // -- Ejercicio 1 --
        //imprimirRazas(razaService.getRazas());

        // -- Ejercicio 2 --
        System.out.println("-- Eliminando raza --");
        String razaAEliminar = menuService.pedirRaza(scanner);
        boolean razaEliminada = razaService.eliminarRaza(razaAEliminar);
        if (!razaEliminada) {
            System.out.println("La raza no fue eliminada: no se ha encontrado la raza ".concat(razaAEliminar));
        }

        razaService.ordenarRazas();
        imprimirRazas(razaService.getRazas());
    }



    public static void imprimirRazas(ArrayList<String> razas) {
        System.out.println("Razas: ");
        for(String raza : razas) {
            System.out.println(" - ".concat(raza));
        }
    }
}
