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
		<button class="btn btn-secondary my-2 my-sm-0" type="submit" onclick="location.href = 'updateProcess.food'" style="font-family: 'Sunflower', sans-serif;">회원정보 수정</button>
&nbsp;&nbsp;
<button class="btn btn-secondary my-2 my-sm-0" type="submit" onclick="location.href = 'logout.food'" style="font-family: 'Sunflower', sans-serif;">로그아웃</button>

	</c:if>

	<c:if test="${empty id}">
		<button class="btn btn-secondary my-2 my-sm-0" type="submit" onclick="location.href = 'login.food'" style="font-family: 'Sunflower', sans-serif;">로그인</button>
	</c:if>
</body>
</html>