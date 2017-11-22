package es.uma.cursoWeb;

import java.io.Serializable;

public class Numero implements Serializable {
  private Integer numero;

  public Numero() {
    // TODO Auto-generated constructor stub
  }

  public Integer getNumero() {
    return numero;
  }

  public void setNumero(Integer numero) {
    this.numero = numero;
  }
 public Character calcularDNI() {
    return "TRWAGMYFPDXBNJZSQVHLCKE".charAt(numero%23);
}
}
