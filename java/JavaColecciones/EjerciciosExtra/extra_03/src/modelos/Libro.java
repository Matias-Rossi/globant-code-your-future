package modelos;

public class Libro {
    private String titulo;
    private String autor;
    private int ejemplares;
    private int prestados;

    public Libro() {}

    public Libro(String titulo, String autor, int ejemplares, int prestados) {
        this.titulo = titulo;
        this.autor = autor;
        this.ejemplares = ejemplares;
        this.prestados = prestados;
    }

    @Override
    public String toString() {
        String s = "";
        s.concat(" # " + titulo + " #");
        s.concat("Autor: " + autor);
        s.concat("Ejemplares: " + ejemplares);
        s.concat("Ejemplares prestados: " + prestados);
        return s;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getEjemplares() {
        return ejemplares;
    }

    public void setEjemplares(int ejemplares) {
        this.ejemplares = ejemplares;
    }

    public int getPrestados() {
        return prestados;
    }

    public void setPrestados(int prestados) {
        this.prestados = prestados;
    }
}
