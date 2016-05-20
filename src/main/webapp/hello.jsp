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
<h5> For details on automation used, please click <a href="detail2.html" target="_top">here</a> </h5>
<br>
</body>
</html>