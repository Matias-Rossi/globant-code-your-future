package servicios;

import modelos.Alumno;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

public class AlumnoService {
    ArrayList<Alumno> alumnos = new ArrayList<>();

    public void cargarAlumnos(Scanner scanner) {
        // Este metodo deberia estar en otro lado >:(
        boolean continuar = true;

        while (continuar) {
            Alumno nuevoAlumno = crearAlumno(scanner);
            alumnos.add(nuevoAlumno);

            System.out.print("Desea continuar? (S/N): ");
            String respuestaContinuar = scanner.nextLine();
            continuar = respuestaContinuar.equalsIgnoreCase("s");
        }

    }

    public Alumno obtenerAlumnoSegunNombre(String nombreBuscado) {
        Iterator<Alumno> alumnosIterator = alumnos.iterator();
        while (alumnosIterator.hasNext()) {
            Alumno alumno = alumnosIterator.next();
            if (alumno.getNombre().equalsIgnoreCase(nombreBuscado)) {
                return alumno;
            }
        }

        System.out.println("no bro, cagaste");
        return null;
    }

    public double notaFinal(Alumno alumno) {
        Iterator<Integer> notasIterator = alumno.getNotas().iterator();
        int suma = 0;

        while (notasIterator.hasNext()) {
            suma += notasIterator.next();
        }

        return ((double) suma) / 3;
    }

    private Alumno crearAlumno(Scanner scanner) {
        Alumno alumno = new Alumno();
        ArrayList<Integer> notas = new ArrayList<>();

        System.out.print("\nIngrese el nombre del alumno: ");
        alumno.setNombre(scanner.nextLine());

        System.out.println("Ingrese las 3 notas del alumno, separadas por <ENTER>: ");
        for (int i = 0; i < 3; i++) {
            notas.add(scanner.nextInt());
        }
        scanner.nextLine();

        alumno.setNotas(notas);

        return alumno;
    }
}
