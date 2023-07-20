

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;

public class RazaService {
    private ArrayList<String> razas;
    public void agregarRaza(String raza) {
        razas.add(raza);
    }

    // Devuelve si el perro ha sido eliminado :c
    public boolean eliminarRaza(String razaBuscada) {
        Iterator<String> iterator = razas.iterator();
        boolean razaEncontrada = false;

        while (iterator.hasNext() && !razaEncontrada) {
            if (razaBuscada.equalsIgnoreCase(iterator.next())) {
                iterator.remove();
                return true;
            }
        }

        return false;
    }

    public void ordenarRazas() {
        razas.sort(new Comparator<String>() {
            @Override
            public int compare(String raza1, String raza2) {
                return raza1.compareTo(raza2);
            }
        });
    }

    public ArrayList<String> getRazas() {
        return razas;
    }


    public void setRazas(ArrayList<String> razas) {
        this.razas = razas;
    }

    public RazaService() {
        razas = new ArrayList<>();
    }
}
