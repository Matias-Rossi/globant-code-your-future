package servicios;

import org.junit.Before;
import org.junit.Test;

import static junit.framework.TestCase.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

public class ProductoServiceTest {

    ProductoService productoService;

    @Before
    public void setUp() {
        productoService = new ProductoService();
        productoService.agregarProducto("p1", 200);
    }

    @Test
    public void agregarProductoNuevoTest() {
        productoService.agregarProducto("p2", 400);
        assertEquals(2, productoService.cantidadProductos());
    }

    @Test
    public void agregarProductoExistenteTest() {
        productoService.agregarProducto("p1", 600);
        assertEquals(1, productoService.cantidadProductos());
    }

    @Test
    public void modificarPrecioExistenteTest() {
        productoService.modificarPrecio("p1", 250);
        assertEquals(250.0, productoService.getPrecioProducto("p1"), 0);
    }

    @Test
    public void modificarPrecioNoExistenteTest() {
        boolean modificado = productoService.modificarPrecio("p2", 250);
        assertEquals(1, productoService.cantidadProductos());
        assertFalse(modificado);
    }

    @Test
    public void eliminarProductoExistenteTest() {
        boolean eliminado = productoService.eliminarProducto("p1");
        assertEquals(0, productoService.cantidadProductos());
        assertTrue(eliminado);
    }

    @Test
    public void eliminarProductoNoExistenteTest() {
        boolean eliminado = productoService.eliminarProducto("p2");
        assertEquals(1, productoService.cantidadProductos());
        assertFalse(eliminado);
    }
}
