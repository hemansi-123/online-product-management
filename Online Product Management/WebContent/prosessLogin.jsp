<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String username = request.getParameter("username");
	
		String password = request.getParameter("password");
		String uname1="Nandini";
		String pwd1 ="12345678";
		String uname2 = "Hemansi";
		String pwd2 = "hemansi123";
		if((username.equals(uname1) && password.equals(pwd1)) ||(username.equals(uname2) && password.equals(pwd2)))
		{
			session.setAttribute("username",username);
			session.setMaxInactiveInterval(30);
			response.sendRedirect("home.jsp");
		}
		else
		{
			response.sendRedirect("loginFailed.jsp");
		}
	%>
</body>
</html>