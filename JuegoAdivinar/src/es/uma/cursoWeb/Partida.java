package es.uma.cursoWeb;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Random;

public class Partida implements Serializable {
  private Integer numero;
  private Integer numero_adivinar;
  private Integer intentos;
  private ArrayList<Integer> numeros_previos;
  private Integer max_intentos = 10;

  public Integer getNumero() {
    return numero;
  }

  public void setNumero(Integer numero) {
    this.numero = numero;
  }

  public Integer getNumero_adivinar() {
    return numero_adivinar;
  }

  public void setNumero_adivinar(Integer numero_adivinar) {
    this.numero_adivinar = numero_adivinar;
  }

  public Integer getIntentos() {
    return intentos;
  }

  public void setIntentos(Integer intentos) {
    this.intentos = intentos;
  }

  public ArrayList<Integer> getNumeros_previos() {
    return numeros_previos;
  }

  public void setNumeros_previos(ArrayList<Integer> numeros_previos) {
    this.numeros_previos = numeros_previos;
  }

  public Integer getMax_intentos() {
    return max_intentos;
  }

  public void setMax_intentos(Integer max_intentos) {
    this.max_intentos = max_intentos;
  }

  public Partida() {
    // TODO Auto-generated constructor stub
    numero = null;
    numero_adivinar = (new Random()).nextInt()%50 + 50 ;
    intentos = 1;
    numeros_previos = new ArrayList<Integer>();
    
  }

}
