/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_ej13;

import java.util.Scanner;

/**
 *
 * @author matias
 */
public class Curso {
    private String nombreCurso;
    private int horasPorDia;
    private int diasPorSemana;
    private String turno;               //"ma"ñana o "ta"(rde)
    private int precioPorHora;
    private String[] alumnos = new String[5];
    
    
    public void cargarAlumnos() {
        Scanner leer = new Scanner(System.in);
        for (int i = 0; i < 5; i++) {
            System.out.print("\nIngrese el nombre del alumno ("+(i+1)+"/5): ");
            alumnos[i] = leer.nextLine();
        }
    }
    
    public void crearCurso() {
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingrese el nombre del curso: ");
        nombreCurso = leer.nextLine();
        System.out.println("Ingrese la cantidad de horas por dia: ");
        horasPorDia = leer.nextInt();
        System.out.println("Ingrese la cantidad de dias por semana: ");
        diasPorSemana = leer.nextInt();
        System.out.println("Ingrese el turno (ma/ta): ");
        turno = leer.next();
        System.out.println("Ingrese el precio por hora: ");
        precioPorHora = leer.nextInt();
        
        cargarAlumnos();
    }
    
    public int calcularGananciaSemanal() {
        //Los alumnos parecen ser siempre 5 según el enunciado
        return horasPorDia * precioPorHora * diasPorSemana * 5;
    }
    
    
    // Constructores, getters & setters
    
    public Curso(String nombreCurso, int cantidadHorasPorDia, int cantidadDiasPorSemana, String turno, int precioPorHora) {
        this.nombreCurso = nombreCurso;
        this.horasPorDia = horasPorDia;
        this.diasPorSemana = diasPorSemana;
        this.turno = turno;
        this.precioPorHora = precioPorHora;
    }

    public Curso() {
    }

    public String getNombreCurso() {
        return nombreCurso;
    }

    public void setNombreCurso(String nombreCurso) {
        this.nombreCurso = nombreCurso;
    }

    public int getHorasPorDia() {
        return horasPorDia;
    }

    public void setHorasPorDia(int horasPorDia) {
        this.horasPorDia = horasPorDia;
    }

    public int getDiasPorSemana() {
        return diasPorSemana;
    }

    public void setDiasPorSemana(int diasPorSemana) {
        this.diasPorSemana = diasPorSemana;
    }

    public String getTurno() {
        return turno;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }

    public int getPrecioPorHora() {
        return precioPorHora;
    }

    public void setPrecioPorHora(int precioPorHora) {
        this.precioPorHora = precioPorHora;
    }

    public String[] getAlumnos() {
        return alumnos;
    }

    public void setAlumnos(String[] alumnos) {
        this.alumnos = alumnos;
    }
    
}
