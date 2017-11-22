package es.uma.cursoWeb;

import java.io.Serializable;

public class Opinion implements Serializable {
  private String nombre;
  private int edad;
  private String comentario;

  public Opinion() {
    // TODO Auto-generated constructor stub
  }

  public String getNombre() {
    return nombre;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public int getEdad() {
    return edad;
  }

  public void setEdad(int edad) {
    this.edad = edad;
  }

  public String getComentario() {
    return comentario;
  }

  public void setComentario(String comentario) {
    this.comentario = comentario;
  }

}
