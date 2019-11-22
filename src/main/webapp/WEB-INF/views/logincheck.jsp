<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${not empty id }">
		<img width="50px" height="50px" src="resources/img/animat-image-color.gif"><h5 style="color: black; font-family: 'Sunflower', sans-serif;"><a href="updateForm.food">${id }</a>님, 환영합니다!</h5>&nbsp;&nbsp;&nbsp;&nbsp;
		<button class="btn btn-secondary my-2 my-sm-0" type="submit" onclick="location.href = 'mymenu.food'" style="font-family: 'Sunflower', sans-serif;">마이페이지</button>
&nbsp;&nbsp;
<button class="btn btn-secondary my-2 my-sm-0" type="submit" onclick="location.href = 'logout.food'" style="font-family: 'Sunflower', sans-serif;">로그아웃</button>

	</c:if>

	<c:if test="${empty id}">
		<button class="btn btn-secondary my-2 my-sm-0" type="submit" onclick="location.href = 'login.food'" style="font-family: 'Sunflower', sans-serif;">로그인</button>
	</c:if>
</body>
</html>