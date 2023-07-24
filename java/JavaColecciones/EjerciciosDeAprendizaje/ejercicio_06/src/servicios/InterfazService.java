package servicios;

import java.util.Scanner;

// Quise hacerlo así

public class InterfazService {
    Scanner scanner = new Scanner(System.in);

    public InterfazService() {}

    public String ingresarNombreProducto() {
        System.out.print("Ingrese el nombre del producto: ");
        return scanner.nextLine();
    }

    public double ingresarPrecioProducto() {
        System.out.print("Ingrese el precio del producto: $");
        String precioIntroducido = scanner.nextLine();

        while(!esNumero(precioIntroducido)) {
            System.out.print("Ingrese un precio válido: $");
            precioIntroducido = scanner.nextLine();
        }

        return Double.valueOf(precioIntroducido);
    }

    private boolean esNumero(String str) {
        for (int i=0; i<str.length(); i++) {
            char caracter = str.charAt(i);

            // Si no es . o dígito
            if (!(Character.isDigit(caracter) || (caracter == '.'))) {
                return false;
            }
        }
        return true;
    }
}
