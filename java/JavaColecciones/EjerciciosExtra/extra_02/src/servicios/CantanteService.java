package servicios;

import modelos.CantanteFamoso;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CantanteService {
    List<CantanteFamoso> cantantes = new ArrayList<>();

    public CantanteService() {}

    public void imprimirInformacionCantantes() {
        Iterator<CantanteFamoso> cantantesIterator = cantantes.iterator();
        while(cantantesIterator.hasNext()) {
            System.out.println(cantantesIterator.next().toString());
        }
    }

    public void agregarCantante(String nombre, String discoMasVendido) {
        cantantes.add(new CantanteFamoso(nombre, discoMasVendido));
    }

    public void agregarCantante(CantanteFamoso cantante) {
        cantantes.add(cantante);
    }

    public void eliminarCantante(String nombre) {
        Iterator<CantanteFamoso> cantantesIterator = cantantes.iterator();
        while(cantantesIterator.hasNext()) {
            CantanteFamoso cantanteFamoso = cantantesIterator.next();

            if (cantanteFamoso.getNombre().equalsIgnoreCase(nombre)) {
                cantantesIterator.remove();
                System.out.println("Cantante eliminado");
                return;
            }
        }
            System.out.println("No se ha encontrado al cantante");
    }
}
