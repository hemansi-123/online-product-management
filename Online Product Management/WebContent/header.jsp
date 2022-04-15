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
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("login.jsp");
	}
	%>
	<nav class="navbar">
		<ul class="navbar-nav">
			<li><a href="home.jsp">Home</a></li>
			<li><a href="AddProduct.jsp">Add Product</a></li>
			<li><a href="ProductController?flag=showdata">View Product</a></li>
			<li><a href="SearchProduct.jsp">Search Product</a></li>
			
			<li style="float:right;margin-right:10px"><a href="logout.jsp">Logout</a></li>
		</ul>
	</nav>
</body>
</html>