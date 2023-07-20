import servicios.PeliculaService;

public class Main_ColeccionesEj4 {
    public static void main(String[] args) {
        PeliculaService peliculaService = new PeliculaService();
        peliculaService.crearPeliculas();

        System.out.println(" --- Todas las peliculas ---");
        peliculaService.mostrarPeliculas();

        System.out.println(" --- Películas con duración mayor a una hora ---");
        peliculaService.mostrarPeliculasDuracionMayorAUnaHora();

        System.out.println(" --- Películas con duración ascendente ---");
        peliculaService.ordenarPeliculasSegunDuracion(true);
        peliculaService.mostrarPeliculas();

        System.out.println(" --- Películas con duración descendente ---");
        peliculaService.ordenarPeliculasSegunDuracion(false);
        peliculaService.mostrarPeliculas();

        System.out.println(" --- Películas ordenadas por título ---");
        peliculaService.ordenarPeliculasSegunTitulo();
        peliculaService.mostrarPeliculas();

        System.out.println(" --- Películas ordenadas por director ---");
        peliculaService.ordenarPeliculasSegunDirector();
        peliculaService.mostrarPeliculas();

    }
}
