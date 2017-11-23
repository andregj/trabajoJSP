package es.uma.cursoWeb;

import java.io.Serializable;
import javax.enterprise.context.RequestScoped;
import javax.faces.bean.ManagedBean;

@ManagedBean
@RequestScoped
public class Usuario implements Serializable {
  
  private String nombre;
  
  public String getNombre() {
    return nombre;
  }
  public void setNombre(String nombre) {
    this.nombre = nombre;
  }
 
  public Usuario() {
    // TODO Auto-generated constructor stub
  }
public String navegar() {
  if (nombre.startsWith("admin")) {
    nombre = nombre.substring(5);
    return "administracion";
  } else {
    return  "bienvenida";
  }
}
}
