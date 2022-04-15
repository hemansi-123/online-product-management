<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<button><a href="home.jsp">Home</a></button><br><br>

<table border="1px solid black">
	<thead>
	
		<td>Product ID</td>
		<td>Product Name</td>
		<td>Product Category</td>
		<td>Product Price</td>
		
		
	</thead>
	<c:forEach var="i" items="${sessionScope.list}" varStatus="j">
		<tr align="center">
		<%-- <td>${j.count}</td> --%>
		
		<td>${i.id}</td>
		<td>${i.name}</td>
		<td>${i.category}</td>
		<td>${i.price}</td>
		
		
		</tr>
	</c:forEach>
	
</table>
</body>
</html>