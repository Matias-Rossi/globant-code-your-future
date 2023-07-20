package servicios;

import modelos.Pelicula;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

public class PeliculaService {
    ArrayList<Pelicula> peliculas;

    public PeliculaService() {
        peliculas = new ArrayList<>();
    }

    public void crearPeliculas() {
        boolean continuar = true;

        while(continuar) {
            crearPelicula();

            // Esto debería estar en una función aparte, pero no correspondería a este servicio
            // (y este método que llama a la función crearPelicula varias veces tampoco)
            Scanner scanner = new Scanner(System.in);
            System.out.print("Desea agregar otra película? (S/N): ");
            continuar = scanner.nextLine().equalsIgnoreCase("S");
        }
    }

    public void crearPelicula() {
        Scanner scanner = new Scanner(System.in);
        Pelicula pelicula = new Pelicula();

        System.out.print("Ingrese el nombre de la pelicula: ");
        pelicula.setTitulo(scanner.nextLine());

        System.out.print("Ingrese el director: ");
        pelicula.setDirector(scanner.nextLine());

        System.out.print("Ingrese cuántas horas dura la película: ");
        pelicula.setDuracionHoras(Double.parseDouble(scanner.nextLine()));

        peliculas.add(pelicula);
    }

    public void mostrarPeliculas() {
        Iterator<Pelicula> peliculaIterator = peliculas.iterator();

        while (peliculaIterator.hasNext()) {
            System.out.println(peliculaIterator.next());
            System.out.println("--------------------");
        }
    }

    public void mostrarPeliculasDuracionMayorAUnaHora() {
        Iterator<Pelicula> peliculaIterator = peliculas.iterator();

        while (peliculaIterator.hasNext()) {
            Pelicula pelicula = peliculaIterator.next();
            if (pelicula.getDuracionHoras() > 1) {
                System.out.println(pelicula);
            }
        }
    }

    public void ordenarPeliculasSegunDuracion(boolean ordenarAscendentemente) {
        if (ordenarAscendentemente)
            peliculas.sort(Pelicula.compararDuracion);
        else
            peliculas.sort(Pelicula.compararDuracion.reversed());
    }

    public void ordenarPeliculasSegunTitulo() {
        peliculas.sort(Pelicula.compararTitulo);
    }

    public void ordenarPeliculasSegunDirector() {
        peliculas.sort(Pelicula.compararDirector);
    }

}
