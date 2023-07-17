package EjerciciosDeAprendizaje.ejercicio_04;

import java.util.ArrayList;
import java.util.List;

public class TaskManager {
    private List<String> tareas;

    public String obtenerTodasLasTareas() {
        String retorno = "";
        for (int i = 0; i < tareas.size(); i++) {
            String tarea = tareas.get(i);
            retorno = retorno + i + ": " + tarea + "\n";
        }

        return retorno;
    }

    public int obtenerCantidadTareas() {
        return tareas.size();
    }

    public String obtenerTareaEnPosicion(int pos) {
        return tareas.get(pos);
    }

    public int agregarTarea(String tarea) {
        tareas.add(tarea);
        return tareas.size();
    }

    public String eliminarTareaEnPosicion(int pos) {
        return tareas.remove(pos);
    }

    public TaskManager() {
        tareas = new ArrayList<>();
    }
}
