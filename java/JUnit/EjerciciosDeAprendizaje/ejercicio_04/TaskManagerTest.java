package EjerciciosDeAprendizaje.ejercicio_04;

import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import static junit.framework.TestCase.assertEquals;

public class TaskManagerTest {

    private static TaskManager taskManager;

    @Before
    public void setUp() {
        taskManager = new TaskManager();
        taskManager.agregarTarea("tarea 1");
    }

    @Test
    public void obtenerTareaEnPosicionTest() {
        assertEquals("tarea 1", taskManager.obtenerTareaEnPosicion(0));
    }

    @Test
    public void agregarTareaTest() {
        taskManager.agregarTarea("tarea 2");
        assertEquals(2, taskManager.obtenerCantidadTareas());
    }

    @Test
    public void eliminarTareaEnPosicionTest() {
        taskManager.eliminarTareaEnPosicion(0);
        assertEquals(0, taskManager.obtenerCantidadTareas());
    }
}
