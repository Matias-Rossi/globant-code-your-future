package poo_ej14;

import java.util.Scanner;

public class MovilService {
    private Movil movil;

    public MovilService() {
        movil = new Movil();
    }

    public void cargarCelular() {
        Scanner leer = new Scanner(System.in);

        System.out.println("Ingrese la marca del móvil: ");
        movil.setMarca(leer.nextLine());
        System.out.println("Ingrese el modelo del móvil: ");
        movil.setModelo(leer.nextLine());
        System.out.println("Ingrese el precio del móvil: ");
        movil.setPrecio(leer.nextDouble());
        System.out.println("Ingrese la memoria RAM del móvil (en GB): ");
        movil.setMemoriaRam(leer.nextInt());
        System.out.println("Ingrese la capacidad de almacenamiento del móvil (en GB): ");
        movil.setAlmacenamiento(leer.nextInt());

        ingresarCodigo(); //El enunciado no aclara, pero lo agrego igual
    }

    public void ingresarCodigo() {
        Scanner leer = new Scanner(System.in);

        int[] codigo = new int[7];

        System.out.println("Ingrese los 7 dígitos, uno por vez, del código: ");
        for (int i = 0; i < 7; i++) {
            codigo[i] = leer.nextInt();
        }

        movil.setCodigo(codigo);
    }
}
