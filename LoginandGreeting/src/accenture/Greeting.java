package accenture;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Greeting
 */
@WebServlet("/Greeting")
public class Greeting extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Greeting() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter out = response.getWriter();
    out.println("<!DOCTYPE html>");
    out.println("<html>");
    out.println("<body>");      
    out.println("<form method=\"GET\" name=\"Greeting\" action=\"Login\">");
    out.println("Usuario: <input type =\"texto\" name=\"usuario\" ><br/>");
    out.println("Password: <input type =\"texto\" name=\"password\" ><br/>");
    out.println("<button type = \"submit\" >Enviar</button>");
    out.println("</form>");
    out.println("</body>");
    out.println("</html>");
}/*
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter out = response.getWriter();
    out.println("<!DOCTYPE html>");
    out.println("<html>");
    out.println("<body>");      
    out.println("<h1> Welcome <h1>");
    out.println("Usuario: <input type =\"texto\" name=\"usuario\" ><br/>");
    out.println("Password: <input type =\"texto\" name=\"password\" ><br/>");
    out.println("<button type = \"submit\" >Enviar</button>");
    out.println("</form>");
    out.println("</body>");
    out.println("</html>");
}*/

protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
    doGet(request, response);
    }
}
