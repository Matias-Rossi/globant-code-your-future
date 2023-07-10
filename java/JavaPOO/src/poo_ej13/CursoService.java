package poo_ej13;

import java.util.Scanner;

public class CursoService {
    Curso curso;

    public CursoService() {
        curso = new Curso();
    }

    public void crearCurso() {
        Scanner leer = new Scanner(System.in);

        System.out.println("Ingrese el nombre del curso: ");
        curso.setNombreCurso(leer.nextLine());
        System.out.println("Ingrese la cantidad de horas por dia: ");
        curso.setHorasPorDia(leer.nextInt());
        System.out.println("Ingrese la cantidad de dias por semana: ");
        curso.setDiasPorSemana(leer.nextInt());
        System.out.println("Ingrese el turno (ma/ta): ");
        curso.setTurno(leer.next());
        System.out.println("Ingrese el precio por hora: ");
        curso.setPrecioPorHora(leer.nextInt());

        cargarAlumnos();
    }

    public void cargarAlumnos() {
        Scanner leer = new Scanner(System.in);
        String[] alumnos = new String[5];

        for (int i = 0; i < 5; i++) {
            System.out.print("\nIngrese el nombre del alumno ("+(i+1)+"/5): ");
            alumnos[i] = leer.nextLine();
        }

        curso.setAlumnos(alumnos);
    }


    public int calcularGananciaSemanal() {
        //Los alumnos parecen ser siempre 5 según el enunciado
        return curso.getHorasPorDia() * curso.getPrecioPorHora() * curso.getDiasPorSemana() * 5;
    }


}
