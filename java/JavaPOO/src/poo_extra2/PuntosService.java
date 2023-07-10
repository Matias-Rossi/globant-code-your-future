package poo_extra2;

import java.util.Scanner;

public class PuntosService {
    private Puntos puntos;

    public PuntosService(){
        puntos = new Puntos();
    }

    public void crearPuntos() {
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese coordenadas para x1 y y1, separados por <ENTER>:");
        puntos.setX1(leer.nextDouble());
        puntos.setY1(leer.nextDouble());

        System.out.println("Ingrese coordenadas para x2 y y2, separados por <ENTER>:");
        puntos.setX2(leer.nextDouble());
        puntos.setY2(leer.nextDouble());
    }

    public double calcularDistancia() {
        double distanciaX = puntos.getX2() - puntos.getX1();
        double distanciaY = puntos.getY2() - puntos.getY1();
        return Math.sqrt(Math.pow(distanciaX, 2) + Math.pow(distanciaY, 2));
    }
}
