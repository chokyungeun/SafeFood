<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Menu"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="UTF-8">
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">

<head>
<title>내 알러지를 부탁해 —</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link
	href="https://fonts.googleapis.com/css?family=Cinzel:400,700|Montserrat:400,700|Roboto&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">

<link rel="stylesheet" href="css/jquery.fancybox.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">

<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="css/aos.css">
<link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet"
	type="text/css">

<link rel="stylesheet" href="css/style.css">


<!--
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"> -->


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
.collapse {
	padding-right: 100px;
}

#menu ul li {
	vertical-align: middle;
	text-align: center;
}

.contents img {
	width: 350px;
	height: 350px;
}

.drpt {
	overflow: scroll;
	height: 150px;
}
</style>



</head>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="main.food" style="font-family: 'Sunflower', sans-serif;">내 알러지를 부탁해</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarColor02">
		<ul class="navbar-nav mr-auto">
		</ul>
		<%@ include file="logincheck.jsp"%>
	</div>
</nav>

<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

	<div class="site-wrap">

		<div class="site-mobile-menu site-navbar-target">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close mt-3">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>



		<div class="header-top">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-12 text-center">
						<a href="main.food" class="site-logo"> <img
							src="resources/img/logo2.png" alt="Image" class="img-fluid"
							width="500px" height="100px" alt="Image" class="img-fluid">
						</a>
					</div>
					<a href="main.food" class="mx-auto d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black">
						<span class="icon-menu h3"></span>
					</a>
				</div>
			</div>


			<div class="site-navbar py-2 js-sticky-header site-navbar-target d-none pl-0 d-lg-block" role="banner">

				<div class="container">
					<div class="d-flex align-items-center">

						<div class="mx-auto">
							<nav class="site-navigation position-relative text-left" role="navigation">
								<ul class="site-menu main-menu js-clone-nav mx-auto d-none pl-0 d-lg-block border-none">
									<li><a href="main.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;"> 홈 화면</a></li>
									<li><a href="boardlist.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">공지사항</a></li>
									<li><a href="list.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">상품정보</a></li>
									<li><a href="allmenu.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">식단정보</a></li>
									<li><a href="chart.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">베스트식품</a></li>
									<li><a href="mypage.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">섭취정보</a></li>
									<li><a href="qna.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">Q&A</a></li>
									<li><a href="allreceivemessage.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">쪽지함</a></li>
								</ul>
							</nav>

						</div>
					</div>
				</div>

			</div>

		</div>

		<div class="site-section mt-5">
			<div class="container">
				<h2 class="d-block" style="font-family: 'Sunflower', sans-serif;">식단
					정보 검색</h2>

				<div class="row mb-5">
					<div class="col-12 section-title text-center mb-5">
						<p>

							<nav class="navbar navbar-expand-lg navbar-dark bg-light">
								<a class="navbar-brand" href="#"></a>
								<button class="navbar-toggler" type="button"
									data-toggle="collapse" data-target="#navbarColor02"
									aria-controls="navbarColor02" aria-expanded="false"
									aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>



								<div class="collapse navbar-collapse" id="navbarColor02">
									<ul class="navbar-nav mr-auto">
										<li class="nav-item active"><a class="nav-link" href="#">
												<span class="sr-only">(current)</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" href="#"></a></li>
										<li class="nav-item"><a class="nav-link" href="#"></a></li>
										<li class="nav-item"><a class="nav-link" href="#"></a></li>
									</ul>
									<form method="post" action="searchmenu.food"
										class="form-inline my-2 my-lg-0">
										<select name="condition" class="custom-select"
											style="font-family: 'Sunflower', sans-serif;">
											<option value="food">이름</option>
										</select> <span></span> <input class="form-control mr-sm-2" type="text"
											placeholder="" name="word">
										<button class="btn btn-secondary my-2 my-sm-0" type="submit"
											style="font-family: 'Sunflower', sans-serif;">검색</button>
									</form>
								</div>
							</nav>
						</p>
					</div>
				</div>

				<%
					ArrayList<Menu> list = (ArrayList<Menu>) request.getAttribute("list");
					int cnt = 3;
				%>
				<div class="contents" style="margin-bottom: 10px;">
					<%
						for (int i = 0; i < list.size(); i++) {
							if (cnt >= 3) {
								cnt = 0;
					%>

					<div class="row">

						<%
							}
						%>
						<div class="col-sm-4">
							<div class="wine_v_1 text-center pb-4">
								<a href="selectmenu.food?code=<%=list.get(i).getCode()%>"
									class="thumbnail d-block mb-4"
									style="font-family: 'Sunflower', sans-serif;"> <img
									src="/resources/<%=list.get(i).getImg()%>" alt="Image"
									class="img-fluid"></a>
								<div>
									<h3 class="heading mb-1">
										<a href="#" style="font-family: 'Sunflower', sans-serif;"><%=list.get(i).getFood()%></a>
									</h3>
								</div>
								<a href="selectmenu.food?code=<%=list.get(i).getCode()%>"
									class="btn btn-outline-primary"
									style="font-family: 'Sunflower', sans-serif;">추가</a>
							</div>
						</div>

						<%
							cnt++;
								if (cnt >= 3) {
						%>
					</div>
					<%
						}
					%>

					<%
						}
					%>
				</div>


				<%@ include file="footer.jsp"%>
</body>

</html>