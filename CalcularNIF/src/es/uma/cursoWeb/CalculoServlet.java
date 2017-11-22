package es.uma.cursoWeb;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculoServlet
 */
@WebServlet(description = "ServletCalculo", urlPatterns = { "/CalculoServlet" })
public class CalculoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	String dni= request.getParameter("dni");
	 String nif ="";
	 String mensaje="";
	 	 
	 if(dni == null) {
	  mensaje = "Introduzca un numero";
	 } else {
	   
	   try {
	   nif = dni + "-" + calcularDNI(Integer.parseInt(dni));
	   } catch(Exception e) {
	     mensaje = "Numero incorrecto";
	   }
	 }
	 
	 	 
	  response.setContentType("text/html;charset=UTF-8");
      PrintWriter out = response.getWriter();
      out.println("<!DOCTYPE html>\r\n" + 
          "<html>\r\n" + 
          "<head>\r\n" + 
          "<meta charset=\"ISO-8859-1\">\r\n" + 
          "<title>Cálculo del NIF</title>\r\n" + 
          "</head>\r\n" + 
          "<body>\r\n" + 
          "<form method=\"GET\" action=\"CalculoServlet\"\">\r\n" + 
          "<table style=\"width:80%;margin:auto;text-align:center\">\r\n" + 
          "<tr><td colspan=\"2\"><h1>Cálculo del NIF</h1></td></tr>\r\n" + 
          "<tr><td width=\"50%\"><h2>Indique su DNI</h2></td><td><h2 >NIF</h2></td></tr>\r\n" + 
          "<tr><td><input type=\"number\" name=\"dni\" /></td><td><i>"+nif+"</i></td></tr>\r\n" + 
          "<tr><td colspan=\"2\"><i>"+ mensaje +"</i></td></tr>\r\n" + 
          "<tr><td colspan=\"2\"><button type=\"submit\" >Calcular</button></td></tr>\r\n" + 
          "</table>\r\n" + 
          "</form>\r\n" + 
          "</body>\r\n" + 
          "</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	private Character calcularDNI(Integer dni) {
      return "TRWAGMYFPDXBNJZSQVHLCKE".charAt(dni%23);
  }
}
