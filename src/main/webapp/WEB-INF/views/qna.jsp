<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="banner.jsp"%>
<c:if test="${not empty msg}">
			<script type="text/javascript">
				alert("${msg}");
			</script>
		</c:if>
<meta http-equiv=X-UA-Compatible content="IE=edge">
<meta name=viewport content="width=device-width,initial-scale=1">
<link rel=icon href=/favicon.ico>
<link rel=stylesheet
	href=https://use.fontawesome.com/releases/v5.0.10/css/all.css>
<link rel=stylesheet
	href="https://fonts.googleapis.com/css?family=Ubuntu">
<title>todolist</title> 
<link href=/css/app.cf3698c8.css rel=preload as=style>
<link href=/js/app.ee2cad0b.js rel=preload as=script>
<link href=/js/chunk-vendors.ab416914.js rel=preload as=script>
<link href=/css/app.cf3698c8.css rel=stylesheet>
</head>
<body>
	<noscript>
		<strong>We're sorry but todolist doesn't work properly
			without JavaScript enabled. Please enable it to continue.</strong>
	</noscript>
	<div id=app></div>
	<script src=/js/chunk-vendors.ab416914.js></script>
	<script src=/js/app.ee2cad0b.js></script>
</body>
</html>


</body>
</html>