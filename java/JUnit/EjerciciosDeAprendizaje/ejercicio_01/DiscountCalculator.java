package EjerciciosDeAprendizaje.ejercicio_01;

public class DiscountCalculator {

    public double aplicarDescuento(double valorInicial, double descuento) {
        return valorInicial - valorInicial * (descuento / 100);
    }

    public DiscountCalculator() {}
}