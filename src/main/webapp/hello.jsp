<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
 <%@ page import="java.util.Properties"%>

<title>Test Driven development</title>
</head>
<body>
<h1>Web Calendar Login</h1>
<h4>Valid credentials are:-</h4>
<h5>Username: joshwilliams and Password: password</h5>


<form name="login" action="MyServlet" method="get">
	<u1>
		<br><label for="username">Username: </label>
		<input type="text" ID="usernameTF" name="usernameTF" placeholder="enter username" required>
		<br><label for="password">Password: </label>
		<input type="password" ID="passwordTF" name="passwordTF" placeholder="enter password" required> 
		<br>
		<br><input type="submit" ID="submit" value="Send" />
	</u1>
</form>
<li></li>
<table border="1">
	<tr>
		<td>
			<h3>PURPOSE</h3>
				<h4>To demonstrate "Test Driven Development" (TDD) using cucumber, JUnit and Selenium RC on Eclipse.</h4>
				A one line summary of these tools is as below: 
				<br>
				<br>ECLIPSE		: A GUI that allows coding and use of following technologies. 
				<br>
				<br>CUCUMBER	: framework that allows writing code to defined acceptance driven tests.
				<br>
				<br>JUNIT		: API that provides functions to test via code. E.G. assertTrue("a","a") will return true.
				<br>
				<br>SELENIUM RC	: API that provides functions to drive html pages. E.G. browser.findelement(byID("submit")).click() would click submit button.<br> 
				 	
		</td>
	</tr>
	<tr>	
		<td>
			<h3>WHAT THIS APPLICATION DOES</h3>
				This application is about setting up an online web calendar. What you see here, is one user story, for logon, which has been fully implemented as of <%=new java.util.Date()%>. 
				<br>
				<br>At the moment this application:
				<br>
				<br>1. Takes user input in the form of username and password,
				<br>
				<br>2. On selecting submit button, validates the credentials via checking a MySql database.
				<br>
				<br>3. If the credentails authenticate successfully, it presents a welcome user message.
				<br>
				<br>4. If the credentails do NOT authenticate successfully, it presents a "invalid credentials" welcome message. 				   
		</td>
	</tr>
	<tr>	
		<td>
			<h3>WHY IS IT IMPORTANT</h3>
				<h4>This application has been developed entirely using test driven development.</h4>
				 The steps followed were:
				<table>
					<tr>
						<td>
							<h5>PRE-REQUISITE</h5>
								<br>1. ECLIPSE setup with Selenium RC, JUnit and cucumber.
								<br>2. For web development using cloud deployment, Eclipse was setup with jBoss Openshift tools, red hat console (rhc) and GIT for configuration management. 
						</td>
					</tr>
					<tr>
						<td>
							<h5>STEP 1</h5>
								<br>Specify Acceptance based test in simple word processor. 
								<br><img src="AcceptanceTestExample.jpg" alt="AcceptanceTestSpecification">
						</td>
					</tr>
					<tr>
						<td>
							<h5>STEP 2</h5>
								<br>Using cucumber framework, write code for tests using selenium RC API.  
								<br><img src="CucumberWithSeleniumCode.jpg" alt="AcceptanceTestSpecification">
								
						</td>
					</tr>
					<tr>
						<td>
							<h5>STEP 3</h5>
								<br>Develop application to make cucumber tests pass (STEP 1). Progress able to be monitored within seconds, by running the JUnit project.
								<by><img src="TDD_Run_Progress.jpg" alt="AcceptanceTestSpecification">     
						</td>
					</tr>
				</table>			 
		</td>
	</tr>
	
</table>
</body>
</html>