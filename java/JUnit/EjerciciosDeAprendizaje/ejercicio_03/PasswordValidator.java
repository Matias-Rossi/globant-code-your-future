package EjerciciosDeAprendizaje.ejercicio_03;

public class PasswordValidator {

    static private final int LONGITUD_MINIMA = 4;
    static private final boolean DEBE_TENER_CARACTERES_ESPECIALES = true;
    static private final String CARACTERES_ESPECIALES = "¡!\"#$%&/()=?¿?+/*-{}[]-.,;:";
    static private final boolean DEBE_TENER_MAYUSCULAS = true;

    public boolean esValida(String contrasenia) {

        if (contrasenia.length() < LONGITUD_MINIMA) {
            return false;
        }

        if (DEBE_TENER_CARACTERES_ESPECIALES) {
            boolean contieneEspecial = false;
             for (int i = 0; i < CARACTERES_ESPECIALES.length(); i++) {
                 if(contrasenia.contains(String.valueOf(CARACTERES_ESPECIALES.charAt(i)))) {
                     contieneEspecial = true;
                     break;
                 }
             }

             if (!contieneEspecial) {
                 return false;
             }
        }

        if (DEBE_TENER_MAYUSCULAS) {
            boolean mayusculaEncontrada = false;
            for (int i=0; i < contrasenia.length(); i++) {
                if(Character.isUpperCase(contrasenia.charAt(i))) {
                    mayusculaEncontrada = true;
                    break;
                }
            }
            if (!mayusculaEncontrada) {
                return false;
            }
        }

        return true;

    }

    public PasswordValidator() {}
}
