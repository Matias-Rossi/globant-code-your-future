package EjerciciosDeAprendizaje.ejercicio_01;


import org.junit.BeforeClass;
import org.junit.Test;

import static junit.framework.TestCase.assertEquals;

public class DiscountCalculatorTest {

    static DiscountCalculator discountCalculator;

    @BeforeClass
    public static void setUp() {
        discountCalculator = new DiscountCalculator();
    }

    @Test
    public void aplicarDescuento10Test() {
        double valorDescontado = discountCalculator.aplicarDescuento(100, 10);
        assertEquals(90.0, valorDescontado);
    }

    @Test
    public void aplicarDescuentoNuloTest() {
        double valorDescontado = discountCalculator.aplicarDescuento(100, 0);
        assertEquals(100.0, valorDescontado);
    }

    @Test
    public void aplicarDescuentoTotalTest() {
        double valorDescontado = discountCalculator.aplicarDescuento(100, 90);
        assertEquals(10.0, valorDescontado);
    }
}
