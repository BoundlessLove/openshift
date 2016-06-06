<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="java.util.Properties"%> 
 <%@ page import="beans.*" %>
 <%@ page import="java.lang.*" %>
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Web Calendar Home</title>
</head>
<body>
<%
if (session.getAttribute("username") == null){
	response.sendRedirect("MyServlet");
}
%>
<h1> Web Calendar Homepage</h1>
<label id="welcomeMSG" for="username">Welcome <% out.print( session.getAttribute("username"));%></label>
<jsp:useBean id="monthDates" 
                    class="beans.MonthDatesBean"> 
   <jsp:setProperty name="monthDates" property="month" 
                    value='<%=session.getAttribute("month")%>'/>
   <jsp:setProperty name="monthDates" property="year" 
                    value='<%=session.getAttribute("year")%>'/>
</jsp:useBean>

<p><label id="CurrentMonth">Current Month: 
   <jsp:getProperty name="monthDates" property="month"/></label>
   <label id="CurrentMonth"> and Current Year: 
   <jsp:getProperty name="monthDates" property="year"/></label>
</p>
<p><label id="MonthStartDate">Month Start Date: 
   <jsp:getProperty name="monthDates" property="monthStartDate"/></label>
</p>
<p><label id="MonthEndDate">Month End Date: 
   <jsp:getProperty name="monthDates" property="monthEndDate"/></label>
</p>
<li></li>
<form name="displaymonth" action="DisplayMonth" method="get">
<br>To View a different Month, please select month and year below:</h3> 
<br>
<br> Select a month: 
<select id="monthlist" name="monthlist">
   <option value="June">June</option>
   <option value="July">July</option>
   <option value="August">August</option>
   <option value="September">September</option>
</select> 
<br>
<br> Select a year: 
<select id="yearlist" name="yearlist">
   <option value="2016">2016</option>
   <option value="2015">2015</option>
   <option value="2017">2017</option>
</select> 
 <br><li> <input type="submit" ID="submit" value="Submit" /></li>
</form> 
<br>
<h5> For details on Automation used, please click <a href="detail2.html" target="_top">here</a> </h5>
<br>©Jay Sarna 2016
</body>
</html>