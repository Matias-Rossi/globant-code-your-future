package modelos;

import java.util.Comparator;

public class Pelicula {
    private String titulo;
    private String director;
    private double duracionHoras;

    public static Comparator<Pelicula> compararDuracion = new Comparator<Pelicula>(){
        @Override
        public int compare(Pelicula p1, Pelicula p2) {
            return Double.compare(p1.getDuracionHoras(), p2.getDuracionHoras());
        }
    };

    public static Comparator<Pelicula> compararTitulo = new Comparator<Pelicula>(){
        @Override
        public int compare(Pelicula p1, Pelicula p2) {
            return p1.getTitulo().compareTo(p2.getTitulo());
        }
    };

    public static Comparator<Pelicula> compararDirector = new Comparator<Pelicula>(){
        @Override
        public int compare(Pelicula p1, Pelicula p2) {
            return p1.getDirector().compareTo(p2.getDirector());
        }
    };

    /* Otras formas de escribir el método de arriba (sugeridos por el IDE), ¿cuál te gusta más?

    public static Comparator<Pelicula> compararDirector = (p1, p2) -> p1.getDirector().compareTo(p2.getDirector());

    public static Comparator<Pelicula> compararDirector = Comparator.comparing(Pelicula::getDirector);

    * */

    @Override
    public String toString() {
        String str = "Titulo: " + titulo;
        str = str.concat("\nDirector: " + director);
        str = str.concat("\nDuracion: " + duracionHoras + " horas");

        return str;
    }

    public Pelicula() {}

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public double getDuracionHoras() {
        return duracionHoras;
    }

    public void setDuracionHoras(double duracionHoras) {
        this.duracionHoras = duracionHoras;
    }
}
