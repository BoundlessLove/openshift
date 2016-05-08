package testdrivendevelopment;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import testdrivendevelopment.LogicLayer;

/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	* @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at2: ").append(request.getContextPath());
		/*LogicLayer logic = new LogicLayer();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String username = request.getParameter("usernameTF");
		String password = request.getParameter("passwordTF");
		 
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 "
				+ "Transitional//EN\">\n");
		out.println("<HTML>"); 
	    out.println("<TITLE>Web Calendar Home</TITLE>"); 
	    out.println("<BODY>");
	    out.println("<h1> Web Calendar Homepage</h1>"); 
			if (credentialsExist(logic,username,password)){
				out.println("<label id=\"welcomeMSG\" for=\"username\">Welcome "+ username+"</label>");
			}else{
				out.println("<label id=\"welcomeMSG\" for=\"username\"> Sorry, invalid credentials</label>");			}
	    out.println("</BODY>");	
	    out.println("</HTML>");*/

	}

/*	protected boolean credentialsExist(LogicLayer logic, String username, String password){
		
		if(logic.thisUserExists(username, password)){
			return true;	
		}else{
			return false;
		}
			
	}*/	
	
	/**
	* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	*/
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}