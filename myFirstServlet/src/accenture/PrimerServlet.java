package accenture;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.MathContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.math.*;


@WebServlet(urlPatterns={"/Aleatorio"})
public class PrimerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private int num ;
    private static int nvisitas = 0;

    public PrimerServlet() {
        super();
        // TODO Auto-generated constructor stub
        
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
      response.addHeader("Refresh","2");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<body>");
       num =  (int) (Math.random()*100);
        out.println("<h1>El número aleatorio es: " + num + "</h1>");
        out.println("<h1>Número de veces que se ha visitado la página: "  + nvisitas + "</h1>");
        out.println("</body>");
        out.println("</html>");
        nvisitas ++;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        doGet(request, response);
    }

}