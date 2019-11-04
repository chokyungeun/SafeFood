<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="UTF-8">
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">

<head>
<title>원석_인경_SafeFood &mdash;</title>
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


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="#"
		style="font-family: 'Sunflower', sans-serif;">Safefood</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarColor02" aria-controls="navbarColor02"
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
						<a href="main.food" class="site-logo"> <img src="resources/img/메인.PNG"
							alt="Image" class="img-fluid">
						</a>
					</div>
					<a href="#"
						class="mx-auto d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black"><span
						class="icon-menu h3"></span></a>
				</div>
			</div>


			<div
				class="site-navbar py-2 js-sticky-header site-navbar-target d-none pl-0 d-lg-block"
				role="banner">

				<div class="container">
					<div class="d-flex align-items-center">

						<div class="mx-auto">
							<nav class="site-navigation position-relative text-left"
								role="navigation">
								<ul
									class="site-menu main-menu js-clone-nav mx-auto d-none pl-0 d-lg-block border-none">
									<li><a href="main.food" class="btn btn-outline-success"
										style="font-family: 'Sunflower', sans-serif;">&nbsp 홈 화면</a></li>
									<li><a href="#" class="btn btn-outline-success"
										style="font-family: 'Sunflower', sans-serif;">공지사항</a></li>
									<li><a href="list.food" class="btn btn-outline-success"
										style="font-family: 'Sunflower', sans-serif;">상품정보</a></li>
									<li><a href="chart.food" class="btn btn-outline-success"
										style="font-family: 'Sunflower', sans-serif;">베스트식품</a></li>
									<li><a href="#" class="btn btn-outline-success"
										style="font-family: 'Sunflower', sans-serif;">섭취정보</a></li>
								</ul>
							</nav>

						</div>
					</div>
				</div>

			</div>

		</div>

		<div class="site-section mt-5">
			<div class="container">
				<h2 class="d-block" style="font-family: 'Sunflower', sans-serif;">상품
					정보 검색</h2>

				<div class="row mb-5">
					<div class="col-12 section-title text-center mb-5">
						<p>

							<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
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
									<form method="post" action="search.food"
										class="form-inline my-2 my-lg-0">
										<select name="condition" class="custom-select"
											style="font-family: 'Sunflower', sans-serif;">
											<option value="name">이름</option>
											<option value="maker">제조사</option>
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
					ArrayList<Food> list = (ArrayList<Food>) request.getAttribute("list");
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
								<a href="read.food?code=<%=list.get(i).getCode()%>"
									class="thumbnail d-block mb-4"><img
									src="/safefood/resources/<%=list.get(i).getImg()%>" alt="Image"
									class="img-fluid"></a>
								<div>
									<h3 class="heading mb-1">
										<a href="#"><%=list.get(i).getName()%></a>
									</h3>
								</div>
								<div class="drpt"><%=list.get(i).getMaterial()%></div>
								<a href="#" class="btn btn-outline-primary">추가</a>
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


				<div class="footer">
					<div class="container">

						<div class="row">
							<div class="col-12">
								<div class="copyright">
									<p>
										<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
										Copyright &copy;
										<script>
											document.write(new Date()
													.getFullYear());
										</script>
										This site is made with </i> by <a href="#" target="_blank">원석_인경</a>
										<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
									</p>

								</div>
							</div>
						</div>
					</div>
				</div>





				<!-- .site-wrap -->


				<!-- loader -->
				<div id="loader" class="show fullscreen"
					style="font-family: 'Sunflower', sans-serif;">
					<svg class="circular" width="48px" height="48px">
						<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
							stroke-width="4" stroke="#eeeeee" />
						<circle class="path" cx="24" cy="24" r="22" fill="none"
							stroke-width="4" stroke-miterlimit="10" stroke="#ff5e15" /></svg>
				</div>

				<script src="js/jquery-3.3.1.min.js"></script>
				<script src="js/jquery-migrate-3.0.1.min.js"></script>
				<script src="js/jquery-ui.js"></script>
				<script src="js/popper.min.js"></script>
				<script src="js/bootstrap.min.js"></script>
				<script src="js/owl.carousel.min.js"></script>
				<script src="js/jquery.stellar.min.js"></script>
				<script src="js/jquery.countdown.min.js"></script>
				<script src="js/bootstrap-datepicker.min.js"></script>
				<script src="js/jquery.easing.1.3.js"></script>
				<script src="js/aos.js"></script>
				<script src="js/jquery.fancybox.min.js"></script>
				<script src="js/jquery.sticky.js"></script>
				<script src="js/jquery.mb.YTPlayer.min.js"></script>




				<script src="js/main.js"></script>
</body>

</html>