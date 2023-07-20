import modelos.Alumno;
import servicios.AlumnoService;

import java.util.Scanner;

//odio como está hecho este ejercicio con toda mi alma, lo hice rápido para pasarlo
public class Main_ColeccionesEj3 {
    public static void main(String[] args) {
        AlumnoService alumnoService = new AlumnoService();

        Scanner scanner = new Scanner(System.in);

        alumnoService.cargarAlumnos(scanner);

        System.out.print("Ingrese el alumno para calcular su nota final: ");
        String nombreBuscado = scanner.nextLine();

        Alumno alumnoBuscado = alumnoService.obtenerAlumnoSegunNombre(nombreBuscado);
        if(alumnoBuscado == null) {
            System.out.println("No se ha encntrado el alumno");
        } else {
            System.out.println("Nota final: " + alumnoService.notaFinal(alumnoBuscado));
        }
    }
}
