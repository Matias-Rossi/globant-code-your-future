/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo_ej13;

/**
 * 
 * @author matias
 */
public class Main {
    static public void main(String[] args) {
        CursoService c = new CursoService();
        
        c.crearCurso();
        
        System.out.println("Semanalmente el curso da como ganancia $"+c.calcularGananciaSemanal());
    }
}
