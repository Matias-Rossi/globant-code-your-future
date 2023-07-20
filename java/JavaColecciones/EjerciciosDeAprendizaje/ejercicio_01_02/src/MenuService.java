import java.util.Scanner;

public class MenuService {
    public static String pedirRaza(Scanner scanner) {
        System.out.print("Ingrese una raza: ");
        return scanner.nextLine();
    }


    public static boolean usuarioDeseaContinuar(Scanner scanner) {
        System.out.print("Desea ingresar otra raza? (S/N): ");
        String deseaContinuar = scanner.nextLine();

        // Se puede hacer en una línea, ¿pero no queda más legible así?
        if (deseaContinuar.equalsIgnoreCase("S"))
            return true;
        else
            return false;
    }

}
