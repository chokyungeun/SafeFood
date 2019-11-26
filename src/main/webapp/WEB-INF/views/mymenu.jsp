<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.MyMenu"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" style="font-family: 'Sunflower', sans-serif;">
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">

<head>
<title>내 알러지를 부탁해 &mdash;</title>
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
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<link rel="stylesheet" href="css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" >
function showPopup() { 
	window.open("https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F265DC545525E689903", 
			"popup", 
			"width=600, height=500, left=100, top=50"); 
	}
        
      
    </script>
</head>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="main.food"
		style="font-family: 'Sunflower', sans-serif;">내 알러지를 부탁해</a>
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
						<a href="main.food" class="site-logo"> <img src="resources/img/logo2.png" width="500px"	height="100px"  alt="Image" class="img-fluid">
						</a>
					</div>
					<a href="main.food"
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
									<li><a href="main.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">&nbsp 홈 화면</a></li>
									<li><a href="boardlist.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">공지사항</a></li>
									<li><a href="list.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">상품정보</a></li>
									<li><a href="allmenu.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">식단정보</a></li>
									<li><a href="chart.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">베스트식품</a></li>
									<li><a href="mypage.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">섭취정보</a></li>
									<li><a href="qna.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">Q&A</a></li>
									<li><a href="allreceivemessage.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">쪽지함<c:set var="loop_flag" value="false"/>
									<c:forEach var="row" items="${mlist}">
										<c:if test="${not loop_flag }">
									      	<c:if test="${row.count == 0}" >
									      		<img src="resources/img/new.jpg" alt="Image" class="img-fluid">
									      		<c:set var="loop_flag" value="true"/>
									      	</c:if>
									      </c:if>
									    </c:forEach></a></li>
									<li><a href="map.food" class="btn btn-outline-success" style="font-family: 'Sunflower', sans-serif;">지도</a></li>
								</ul>
								</ul>
							</nav>

						</div>

					</div>
				</div>

			</div>

		</div>
<c:if test="${not empty msg}">
			<script type="text/javascript">
				alert("${msg}");
			</script>
		</c:if>
    <div class="site-section  pb-0" >
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-7 section-title text-center mb-5">
            <h2 class="d-block" style="font-family: 'Sunflower', sans-serif;">내 식단<img width="80px" height="80px"
							src="resources/img/animat-diamond-color.gif"></h2>
          </div>
        </div>
        <div class="row mb-5" style="font-family: 'Sunflower', sans-serif;">
          <form class="col-md-12" method="post">
            <div class="site-blocks-table">
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th class="product-thumbnail">이미지</th>
                    <th class="product-name">이름</th>
                    <th class="product-total">알러지</th>
                    <th class="product-remove">제거</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="row" items="${list}">
                  <input type="hidden" id="code" value="${row.num }"/>
                  <tr>
                    <td class="product-thumbnail">
                    <a href="#"><img src="resources/${row.img }" alt="Image" class="img-fluid" style="font-family: 'Sunflower', sans-serif;"></a>
                    </td>
                    
                    <td class="product-name">
                      <h2 class="h5 cart-product-title text-black" style="font-family: 'Sunflower', sans-serif;">${row.food }</h2>
                    </td>
                    
                    <td class="product-name">
                      <h2 class="h5 cart-product-title text-black" style="font-family: 'Sunflower', sans-serif;">${row.allergy }</h2>
                    </td>
                    
                    <td><a href="deletemymenu.food?num=${row.num }&code=${row.code}" class="btn btn-primary height-auto btn-sm" style="font-family: 'Sunflower', sans-serif;">삭제</a></td>
                  	
                  </tr>
    			</c:forEach>
                </tbody>
              </table>
            </div>
          </form>
        </div>
    
      </div>
    </div>
    
    <center>
    <span style="font-family: 'Sunflower', sans-serif; margin: auto; font-size:30px;" >오늘 식단의 칼로리는 총 
    <span style="font-family: 'Sunflower', sans-serif; margin: auto; font-size:30px; color:red"> ${sum } </span> 
    kcal입니다.</span><br><br>
    <input type="button" class="btn btn-outline-primary" style="font-family: 'Sunflower', sans-serif; margin: auto;" value="하루 권장량 보러가기" onclick="showPopup();"></input>
	<button class="btn btn-primary" style="font-family: 'Sunflower', sans-serif; margin: auto;"><a href="updateForm.food" style="color: white">회원 정보 수정</a></button>
     
    
<%@ include file="footer.jsp"%>
</body>
</html>