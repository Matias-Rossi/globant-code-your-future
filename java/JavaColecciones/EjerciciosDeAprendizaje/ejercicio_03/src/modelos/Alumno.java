package modelos;

import java.util.ArrayList;
import java.util.List;

public class Alumno {

    private String nombre;
    private ArrayList<Integer> notas;

    public Alumno() {}

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public ArrayList<Integer> getNotas() {
        return notas;
    }

    public void setNotas(ArrayList<Integer> notas) {
        this.notas = notas;
    }
}
