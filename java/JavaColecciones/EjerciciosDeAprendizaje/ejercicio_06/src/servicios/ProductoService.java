package servicios;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class ProductoService {
    Map<String, Double> productos;

    public ProductoService() {
        productos = new HashMap<>();
    }

    // Devuelve si el elemento es nuevo o no
    public boolean agregarProducto(String nombre, double precio) {
        Double precioAnterior = productos.put(nombre, precio);
        return precioAnterior == null;
    }

    // No crea elemento nuevo, si no existe el elemento devuelve false
    public boolean modificarPrecio(String nombre, double precio) {
        if(!productos.containsKey(nombre)) {
            return false;
        }

        productos.put(nombre, precio);
        return true;
    }

    // Devuelve si existía el elemento eliminado
    public boolean eliminarProducto(String nombre) {
        Double precioAnterior = productos.remove(nombre);
        return precioAnterior != null;
    }

    public void mostrarProductos() {
        Iterator<Map.Entry<String, Double>> iterador = productos.entrySet().iterator();

        while(iterador.hasNext()) {
            Map.Entry<String, Double> entrada = iterador.next();

            System.out.println(entrada.getKey() + ": \t $" + entrada.getValue());
        }
    }

    public int cantidadProductos() {
        return productos.size();
    }

    public Double getPrecioProducto(String nombre) {
        return productos.get(nombre);
    }
}
