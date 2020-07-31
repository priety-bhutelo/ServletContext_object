<%@page import="java.util.ArrayList" %>  
<%@page import="java.util.Set" %>
<%@page import="java.util.HashSet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Counter</title>
</head>
<body>
	<%!String sessionname, applicationname,name;%>
	<h3>Product</h3>
	<hr>
	<form action="" method="post">
  <input type="text" name="txtproduct">
   <input type="submit" value="Print">
   <%!Set<String> product=new HashSet<String>(); %>
   </form>
	<%
	    name=request.getParameter("txtproduct");
	
		if (session.getAttribute("sessionname") == null) {
			session.setAttribute("sessionname", name);
		}

		if (application.getAttribute("applicationname") == null) {
			application.setAttribute("applicationname",name);
		}

		
		if(name!=null)
		{
			product.add(name);
		}
	%>
	
	<h3>
		Suggestions
		<%=product%>
	</h3>
	
	<%
	session.setAttribute("sessionname", name);
	application.setAttribute("applicationname",name);
	%>
</body>

</html>
