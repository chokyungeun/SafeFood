<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Home</title>
</head>
<body>
<center>
<h1>Customer Data</h1>
<img src="resources/img/welcome.gif" width="150px" height="150px">
<table border="1" >
	<c:forEach items="${list }" var="c">
		<tr>
			<td>${c.num }</td>
			<td><a href="detail.cus?num=${c.num }">${c.name }</a></td>
	</c:forEach>

</table>
<br>
<a href="insert.cus">add customer</a>
</body>
</html>
