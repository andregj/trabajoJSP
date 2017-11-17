package accenture;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns={"/Divisores"})
public class PrimerServlete5 extends HttpServlet {
    private static final long serialVersionUID = 1L;
  

    public PrimerServlete5() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<body>");      
        out.println("<form method=\"GET\" name=\"formulario\" action=\"Divisores\">");
        out.println("Número: <input type =\"texto\" name=\"numero\" ><br/>");
        out.println("<button type = \"submit\" >Enviar</button>");
        String respuesta = request.getParameter("numero");
        if (respuesta !=null) {
          out.println(respuesta);
          out.println("<table>");
          int n =Integer.parseInt(respuesta);
          for(int i=1;i<=n;i++) {
            if(n%i == 0 ) {
              out.println("<tr><td>"+ i +"</td><tr>");
            }
          }
          
          out.println("</table>");
        } else {
          out.println("escribe el numero");
        }
        out.println("</form>");
        out.println("</body>");
        out.println("</html>");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        doGet(request, response);
    }
}