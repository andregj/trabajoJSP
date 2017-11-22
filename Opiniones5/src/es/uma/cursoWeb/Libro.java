package es.uma.cursoWeb;

import java.io.Serializable;
import java.util.ArrayList;

public class Libro implements Serializable {
  private ArrayList<Opinion> lista;

  public Libro() {
    lista= new ArrayList<Opinion>();  }

  public ArrayList<Opinion> getLista() {
    return lista;
  }

  public void setLista(ArrayList<Opinion> lista) {
    this.lista = lista;
  }
public void insert(Opinion op) {
  lista.add(op);
}
}
