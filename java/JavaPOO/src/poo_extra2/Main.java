package poo_extra2;

public class Main {
    public static void main(String[] args) {
        PuntosService ps = new PuntosService();
        ps.crearPuntos();
        System.out.println("Distancia: " + ps.calcularDistancia());
    }
}
