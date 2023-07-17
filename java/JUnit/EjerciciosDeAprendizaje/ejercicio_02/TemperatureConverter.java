package EjerciciosDeAprendizaje.ejercicio_02;

public class TemperatureConverter {

    public double celsiusAFahrenheit(double tCelsius){
        return tCelsius * 1.8 + 32;
    }

    public double celsiusAKelvin(double tCelsius) {
        return tCelsius + 273.15;
    }

    public double fahrenheitACelsius(double tFahrenheit) {
        return (tFahrenheit - 32) / 1.8;
    }

    public double fahrenheitAKelvin(double tFahrenheit) {
        return celsiusAKelvin(fahrenheitACelsius(tFahrenheit));
    }

    public double kelvinACelsius(double tKelvin) {
        return tKelvin - 273.15;
    }

    public double kelvinAFahrenheit(double tKelvin) {
        return celsiusAFahrenheit(kelvinACelsius(tKelvin));
    }

    public TemperatureConverter() {}
}
