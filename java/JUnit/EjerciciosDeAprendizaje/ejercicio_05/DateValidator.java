package EjerciciosDeAprendizaje.ejercicio_05;

public class DateValidator {

    //no rompan con años negativos
    public boolean fechaEsValida(int dia, int mes, int anio) {
        if (mes < 1 || mes > 12) {
            System.out.println("mes inexistente");
            return false;
        }
        if (dia < 1 || dia > diasDelMes(mes, anio)) {
            System.out.println("dia inexistente");
            return false;
        }

        return true;

    }

    private int diasDelMes(int mes, int anio) {
        switch (mes) {
            case 1:
            case 3:
            case 5:
            case 7:
            case 8:
            case 10:
            case 12:
                return 31;
            case 4:
            case 6:
            case 9:
            case 11:
                return 30;
            case 2:
                return anioEsBisiesto(anio) ? 29 : 28;
        }
        return -1;
    }

    private boolean anioEsBisiesto(int anio) {
        return (anio%4 == 0 && anio%100 != 0) || anio%400 == 0;
    }

    public DateValidator() {
    }
}
