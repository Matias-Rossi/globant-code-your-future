package modelos;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// LibroService prácticamente
public class Libreria {
    Set<Libro> libros = new HashSet<>();

    public void agregarLibro(String titulo, String autor, int cantEjemplares) {
        Libro libro = new Libro(titulo, autor, cantEjemplares, 0);
        libros.add(libro);
    }

    public boolean prestamo(String titulo) {
        Libro libro = obtenerLibro(titulo);

        if (libro == null)
            return false;

        if (estaDisponible(libro)) {
            libro.setPrestados(libro.getPrestados() + 1);
            return true;
        } else {
            return false;
        }
    }

    public boolean devolucion(String titulo) {
        Libro libro = obtenerLibro(titulo);

        if (libro == null)
            return false;

        if (libro.getPrestados() > 0) {
            libro.setPrestados(libro.getPrestados() - 1);
            return true;
        } else {
            return false;
        }
    }

    private boolean estaDisponible(Libro libro) {
        if (libro == null)
            return false;

        if (libro.getEjemplares() > libro.getPrestados()) {
            return true;
        } else {
            return false;
        }
    }

    private Libro obtenerLibro(String titulo) {
        Iterator<Libro> librosIterator = libros.iterator();
        while (librosIterator.hasNext()) {
            Libro libro = librosIterator.next();
            if (libro.getTitulo().equalsIgnoreCase(titulo)) {
                return libro;
            }
        }
        return null;
    }
}
