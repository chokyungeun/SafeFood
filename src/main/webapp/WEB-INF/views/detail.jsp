<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Home</title>
</head>
<body>
<center>
<h1>Customer Detail Data</h1>
<img src="resources/img/rabbit.gif" width="150px" height="150px">
<table border="1" >
	<tr>
		<td>${c.num }</td>
		<td>${c.name }</td>
		<td>${c.address }</td>
	</tr>
</table>
<br>
<a href="list.cus">back</a>
<a href="delete.cus?num=${c.num }">delete</a>
</center>
</body>
</html>
