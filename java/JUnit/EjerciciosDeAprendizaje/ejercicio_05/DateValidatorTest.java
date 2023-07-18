package EjerciciosDeAprendizaje.ejercicio_05;

import org.junit.BeforeClass;
import org.junit.Test;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

public class DateValidatorTest {

    private static DateValidator dateValidator;

    @BeforeClass
    public static void setUp() {
        dateValidator = new DateValidator();
    }

    @Test
    public void diaInexistenteTest() {
        assertFalse(dateValidator.fechaEsValida(32, 8, 2005));
        assertFalse(dateValidator.fechaEsValida(-2, 8, 2005));
    }

    @Test
    public void diaInexistenteSegunMesTest() {
        assertFalse(dateValidator.fechaEsValida(31, 4, 2005));
        //assertFalse(dateValidator.fechaEsValida(30, 2, 2005));
    }

    @Test
    public void anioBisiestoTest() {
        assertFalse(dateValidator.fechaEsValida(29, 2, 2023));
        assertTrue(dateValidator.fechaEsValida(29, 2, 2024));
    }

    @Test
    public void mesInexistenteTest() {
        assertFalse(dateValidator.fechaEsValida(24, 14, 2023));
        assertFalse(dateValidator.fechaEsValida(24, -8, 2023));
    }
}
