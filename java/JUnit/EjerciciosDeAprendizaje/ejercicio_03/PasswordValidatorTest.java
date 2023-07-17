package EjerciciosDeAprendizaje.ejercicio_03;

import org.junit.BeforeClass;
import org.junit.Test;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

public class PasswordValidatorTest {

    private static PasswordValidator passwordValidator;

    @BeforeClass
    public static void setUp() {
        passwordValidator = new PasswordValidator();
    }

    @Test
    public void contraseniaValidaTest() {
        assertTrue(passwordValidator.esValida("Abcd1234#"));
    }

    @Test
    public void contraseniaInvalidaSinMayusTest() {
        assertFalse(passwordValidator.esValida("abcd1234$"));
    }

    @Test
    public void contraseniaInvalidaSinSimboloTest() {
        assertFalse(passwordValidator.esValida("Abcd1234"));
    }

    @Test
    public void contraseniaInvalidaCortaTest() {
        assertFalse(passwordValidator.esValida("A#"));
    }
}
