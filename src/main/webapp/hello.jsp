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
<h3>Valid credentials are:-</h3>
<br>Username: joshwilliams 
<br>Password: password


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
			<h2> Table of Contents</h2>
			<br>
			<br>1. PURPOSE 
			<br>
			<br>2. WHAT THIS APPLICATION DOES
			<br>
			<br>3. WHY IS IT IMPORTANT 
			<br>
			<br>4. TEST DRIVEN DEVELOPMENT (TDD) PERFORMED WITH RUBY PROGRAMMING LANGUAGE
			<br>
			<br>5. TDD ON MOBILE PLATFORM
			<br>
		</tr>
	</tr>
	<tr>
		<td>
			<h3>1. PURPOSE</h3>
				<h4>To demonstrate "Test Driven Development" (TDD) of a web application on browser and mobile platforms using cucumber, JUnit, Selenium RC and Appium with Eclipse.</h4>
				<br> The development utilised agile software development as evidenced by the board below:
				<br>
				<br><img src="AgileBoard.jpg" alt="My Agile Board">
				<br>
				<br>A one line summary of these tools is as below: 
				<br>
				<br>ECLIPSE		: A GUI that allows coding and use of following technologies. 
				<br>
				<br>CUCUMBER	: framework that allows writing code to defined acceptance driven tests.
				<br>
				<br>JUNIT		: API that provides functions to test via code. E.G. AssertEquals("a","a") will return true.
				<br>
				<br>SELENIUM RC	: API that provides functions to drive html pages. E.G. browser.findelement(byID("submit")).click() would click submit button.<br> 
				<br>
				<br>APPIUM		: An application server like TOMCAT for mobiles. It hosts mobile devices (iOS and Android), so tests can be run on them.<br> 
		</td>
	</tr>
	<tr>	
		<td>
			<h3>2. WHAT THIS WEB APPLICATION DOES</h3>
				This application is about setting up an online web calendar. What you see here, is one user story from sprint 1, for logon, which has been fully implemented as of <%=new java.util.Date()%>:. 
				<br>
				<br><img src="Sprint1Story1" alt="Completed User Story with estimates and actuals">				
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
			<h3>3. WHY IS IT IMPORTANT</h3>
				<h4>This application has been developed entirely using test driven development.</h4>
				 The steps followed were to first develop the cucumber scripts to drive selenium tests followed by writing the code. In particular:
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
								<br>NOTE: The text "@Given" in screenshot below is followed by the test steps from STEP 1  
								<br><img src="CucumberWithSeleniumCode.jpg" alt="AcceptanceTestSpecification">
								
						</td>
					</tr>
					<tr>
						<td>
							<h5>STEP 3</h5>
								<br>Develop application to make cucumber tests pass (STEP 1). Progress able to be monitored within seconds, by running the JUnit project.
								<br><img src="TDD_Run_Progress.jpg" alt="AcceptanceTestSpecification">     
						</td>
					</tr>
				</table>			 
		</td>
	</tr>
	<tr>	
		<td>
			<h3>4. TEST DRIVEN DEVELOPMENT USING RUBY PROGRAMMING LANGUAGE</h3>
				<h4>The same Selenium tests were also written and run using Ruby language on Ruby Mine IDE software</h4>
				 The steps followed were:
				<table>
					<tr>
						<td>
							<h5>PRE-REQUISITE</h5>
								<br>1. Ruby version 2.0.0 installed.
								<br>2. Ruby Mine IDE installed.
								<br>3. Ruby Gems for RSpec, Capybara, Cucumber, activesupport, selenium-client, selenium-webdriver run. 
						</td>
					</tr>
					<tr>
						<td>
							<h5>STEP 1</h5>
								<br>Specify Acceptance based test in simple word processor. 
								<br><img src="RubyTestSpecification.jpg" alt="RubyTestSpecification">
						</td>
					</tr>
					<tr>
						<td>
							<h5>STEP 2</h5>
								<br>Using cucumber framework, write code for tests using selenium RC API.  
								<br>NOTE: The text "When" in screenshot below is followed by the test steps from STEP 1  
								<br><img src="RubyImplementation.jpg" alt="RubyImplementation">
								
						</td>
					</tr>
					<tr>
						<td>
							<h5>STEP 3</h5>
								<br>Develop application to make cucumber tests pass (STEP 1). Progress able to be monitored within seconds, by running the Capybara project.
								<br><img src="MonitorProgress.jpg" alt="RubyMonitorProgress">     
						</td>
					</tr>
				</table>			 
		</td>
	</tr>
	<tr>	
		<td>
			<h3>5. TEST DRIVEN DEVELOPMENT ON MOBILE PLATFORM</h3>
				<h4>The same Selenium tests were also run on an android device with operating system version 5.1.1</h4>
				 The steps followed to setup the tests for the mobile were:
				<table>
					<tr>
						<td>
							<h5>PRE-REQUISITE</h5>
								<br>1. ECLIPSE setup with Selenium RC, JUnit and cucumber.
								<br>2. For web development using cloud deployment, Eclipse was setup with jBoss Openshift tools, red hat console (rhc) and GIT for configuration management. 
								<br>3. ANDROID SDK downloaded, Eclise setup with AVD manager and SDK Manager with latest android phone emulators and environment variables setup.
								<br>4. Appium application is dowloaded and launched. Java project created with the Apium JARS for android and java selenium jars from seleniumHq downloads page->Selenium Client & WebDriver Language Bindings.
						</td>
					</tr>
					<tr>
						<td>
							<h5>STEP 1</h5>
								<br>Run the appium server to launch the Android device, in my case an emulator.
						</td>
					</tr>
					<tr>
						<td>
							<h5>STEP 2</h5>
								<br>Using cucumber framework, write code for tests using selenium RC API.  
						</td>
					</tr>
					<tr>
						<td>
							<h5>STEP 3</h5>
								<br>Develop application to make cucumber tests pass (STEP 1). Progress able to be monitored within seconds, by running the JUnit project.
								<br> In particular:
								<br>
								<br>a) Cucumber uses Selenium automation to enter data in mobile
								<br>
								<br><img src="SeleniumDrivenMobileDataEntry.jpg" alt="Selenium enters data in mobile"> 
								<br>
								<br>b) Cucumber uses Selenium automation to verify data presented in browser on mobile 
								<br><img src="SeleniumDrivenVerification.jpg" alt="Selenium verifies page content in mobile">     
								<br>
								<br>c) Cucumber results displayed graphically at bottom of below screenshot with selenium code on top
								<br><img src="SUMMARY_MobileTestingWithSeleniumCucumberJUnit.jpg" alt="Using Cucumber to drive selenium automation on mobile">     
																
						</td>
					</tr>
				</table>			 
		</td>
	</tr>
</table>
</body>
</html>