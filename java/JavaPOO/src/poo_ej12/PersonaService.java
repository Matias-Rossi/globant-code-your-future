package poo_ej12;

import java.util.Date;
import java.util.Scanner;

public class PersonaService {
    Persona persona;

    public PersonaService() {
        persona = new Persona();
    }


    public void crearPersona() {
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese el nombre de la persona: ");
        persona.setNombre(leer.nextLine());

        System.out.println("Ingrese (solo) el dia de nacimiento: ");
        int dia = leer.nextInt();

        System.out.println("Ingrese el mes de nacimiento: ");
        int mes = leer.nextInt();

        System.out.println("Ingrese el año de nacimiento: ");
        int anio = leer.nextInt();

        persona.setFechaNacimiento(new Date(anio-1900, mes, dia));
    }

    public int calcularEdad() {
        Date fechaHoy = new Date();
        Date fechaNacimiento = persona.getFechaNacimiento();
        int aniosPasados = fechaHoy.getYear() - fechaNacimiento.getYear();
        boolean cumplioEsteAnio;

        if(fechaHoy.getMonth() < fechaNacimiento.getMonth()) {
            cumplioEsteAnio = false;
        } else {
            if(fechaHoy.getDate() < fechaNacimiento.getDate()) {
                cumplioEsteAnio = false;
            } else {
                cumplioEsteAnio = true;
            }
        }

        return cumplioEsteAnio? aniosPasados : aniosPasados - 1;
    }

    public boolean menorQue(int edad) {
        return calcularEdad() < edad;
    }

    public void mostrarPersona() {
        System.out.println("Nombre: " + persona.getNombre());
        System.out.print("Fecha de nacimiento: ");
        System.out.print(persona.getFechaNacimiento().getDate()+ "/");
        System.out.print(persona.getFechaNacimiento().getMonth() + "/");
        System.out.print(persona.getFechaNacimiento().getYear() + 1900 + "\n");
    }



}
