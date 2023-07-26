package modelos;

public class CantanteFamoso {
    private String nombre;
    private String discoConMasVentas;

    @Override
    public String toString() {
        return nombre + " - Disco más famoso: " + discoConMasVentas;
    }

    public CantanteFamoso(String nombre, String discoConMasVentas) {
        this.nombre = nombre;
        this.discoConMasVentas = discoConMasVentas;
    }

    public CantanteFamoso() {}

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDiscoConMasVentas() {
        return discoConMasVentas;
    }

    public void setDiscoConMasVentas(String discoConMasVentas) {
        this.discoConMasVentas = discoConMasVentas;
    }
}
