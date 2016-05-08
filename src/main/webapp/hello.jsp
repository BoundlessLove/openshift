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
<h4>Valid credentials are:</h4>
<h5>username: joshwilliams</h5>
<h5>password: password</h5>


<form name="login" action="MyServlet" method="get">
	<u1>
		<li><label for="username">Username: </label>
		<input type="text" ID="usernameTF" name="usernameTF" placeholder="enter username" required> </li>
		<li><label for="password">Password: </label>
		<input type="password" ID="passwordTF" name="passwordTF" placeholder="enter password" required> </li>
		<li>
		<input type="submit" ID="submit" value="Send" /></li>
	</u1>
</form>

<h4>PURPOSE</h4>
<h5>To demonstrate test driven development using cucumber, JUnit, Selenium RC on Eclipse</h5>




</body>
</html>