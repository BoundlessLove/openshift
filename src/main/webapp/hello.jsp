<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
 <%@ page import="java.util.Properties"%>

<title>hello.jsp</title>
</head>
<body>
<h1>Let us get java working 1 :)</h1>
<h2> Try 1: Check if this says hello world via a jsp command:</h2>
<%= System.getenv("OPENSHIFT_APP_NAME")%>
 <%
    double num = Math.random();
    if (num > 0.95) {
  %>
      <h3>You'll have a luck day!</h3><p>(<%= num %>)</p>
  <%
    } else {
  %>
      <h3>Well, life goes on ... </h3><p>(<%= num %>)</p>
  <%
    }
  %>
  <a href="<%= request.getRequestURI() %>"><h3>Try Again</h3></a>
<h2> Try 2: Check if page can be redirected</h2>
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
</body>
</html>