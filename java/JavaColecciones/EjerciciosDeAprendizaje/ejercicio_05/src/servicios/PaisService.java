package servicios;

import java.util.*;

public class PaisService {
    Set<String> paises;

    // Devuelve si el país se ha agregado o no
    public boolean agregarPais(String pais) {
        return paises.add(pais);
    }

    public Set<String> getPaises() {
        return paises;
    }

    public void imprimirPaises() {
        Iterator<String> iterator = paises.iterator();

        while(iterator.hasNext()) {
            System.out.println(" - " + iterator.next());
        }
    }

    public void imprimirPaisesOrdenados() {
        ArrayList<String> paisesList = new ArrayList<>(paises);
        paisesList.sort(new Comparator<String>() {
            @Override
            public int compare(String p1, String p2) {
                return p1.compareTo(p2);
            }
        });

        Iterator<String> iterator = paisesList.iterator();

        while(iterator.hasNext()) {
            System.out.println(" - " + iterator.next());
        }
    }

    // Devuelve si el país se ha eliminado
    public boolean eliminarPais(String pais) {
        return paises.remove(pais);
    }

    public PaisService() {
        paises = new HashSet<>();
    }
}
