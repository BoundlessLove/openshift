package testdrivendevelopment;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.VerifyRecaptcha;

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
		//response.getWriter().append("Served at2: ").append(request.getContextPath());
		LogicLayer logic = new LogicLayer();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String username = request.getParameter("usernameTF");
		String password = request.getParameter("passwordTF");
		String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
		boolean captchaOK = verifyCaptcha(gRecaptchaResponse);
		System.out.println("User=" + username + "::password=" + password + "::Captcha Verify "+captchaOK);
		
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 "
				+ "Transitional//EN\">\n");
		out.println("<HTML>"); 
	    out.println("<TITLE>Web Calendar Home</TITLE>"); 
	    out.println("<BODY>");
	    out.println("<h1> Web Calendar Homepage</h1>"); 
		 if (!captchaOK){
				out.println("<label id=\"welcomeMSG\" for=\"username\"> Captch failed. Please go back login and re-enter captcha.</label>");			
		 }else{
		    if(inputValidatedForSQLInjection(username, password)){ 
				if (credentialsExist(logic,username,password)){
					out.println("<label id=\"welcomeMSG\" for=\"username\">Welcome "+ username+"</label>");
				}else{
					out.println("<label id=\"welcomeMSG\" for=\"username\"> Sorry, invalid credentials</label>");
				}
		    }else{
				out.println("<label id=\"welcomeMSG\" for=\"username\"> SQL injection suspected</label>");
		    }
		 }
		out.println("<br>");
		out.println("<br> <a href=\"hello.jsp\" target=\"_top\">back</a> to login page");	
		out.println("<br> <a href=\"detail2.html\" target=\"_top\">click</a> for details on automation used");	
		out.println("<br>");
		out.println("<br>©Jay Sarna 2016");
		out.println("</BODY>");	
	    out.println("</HTML>");

	}

	protected boolean credentialsExist(LogicLayer logic, String username, String password){
		
		if(logic.thisUserExists(username, password)){
			return true;	
		}else{
			return false;
		}
			
	}	

	protected boolean verifyCaptcha(String gRecaptchaResponse) throws IOException{
		System.out.println(gRecaptchaResponse);
		boolean verify;
		try{
			verify = VerifyRecaptcha.verify(gRecaptchaResponse);
		}catch(Exception e){
			e.printStackTrace();
			verify = false;
			return verify;
		}
		return verify;
	}

	
	protected boolean inputValidatedForSQLInjection(String username, String password){
		
		if (username.contains("=") || username.contains(";") || password.contains("=") || password.contains(";") ) {
			return false;	
		}else{
			return true;
		}
	}	

	/**
	* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	*/
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}