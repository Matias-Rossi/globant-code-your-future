package EjerciciosDeAprendizaje.ejercicio_02;

import org.junit.BeforeClass;
import org.junit.Test;

import static org.junit.Assert.*;

public class TemperatureConverterTest {

    public static TemperatureConverter temperatureConverter;

    @BeforeClass
    public static void setUp() {
            temperatureConverter = new TemperatureConverter();
    }

    @Test
    public void celsiusAFahrenheitTest() {
        double tFahrenheit = temperatureConverter.celsiusAFahrenheit(10);
        assertEquals(50, tFahrenheit, 0.1);
    }

    @Test
    public void celsiusAKelvinTest() {
        double tKelvin = temperatureConverter.celsiusAKelvin(15);
        assertEquals(288.15, tKelvin, 0.1);
    }

    @Test
    public void fahrenheitACelsiusTest() {
        double tCelsius = temperatureConverter.fahrenheitACelsius(50);
        assertEquals(10, tCelsius, 0.1);
    }

    @Test
    public void fahrenheitAKelvinTest() {
        double tFahrenheit = temperatureConverter.fahrenheitAKelvin(1);
        assertEquals(255.928, tFahrenheit, 0.1);
    }

    @Test
    public void kelvinACelsiusTest() {
        double tCelsius = temperatureConverter.kelvinACelsius(295.15);
        assertEquals(22, tCelsius, 0.1);
    }

    @Test
    public void kelvinAFahrenheitTest() {
        double tFahrenheit = temperatureConverter.kelvinAFahrenheit(352);
        assertEquals(173.93, tFahrenheit, 0.1);
    }
}