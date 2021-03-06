<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.safe.vo.Menu"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="UTF-8">
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
		var url = "http://www.10000recipe.com/recipe/list.html?q=${m.food }";
		window.open(url, 
				"popup", 
				"width=800, height=500, left=100, top=50"); 
		};
	
      $(document).ready(function(){
    	  $('#add').click(function(){
    		 var count = $('#count').val();
    		 var code = $('#code').val();
    		 $.ajax({
    			url:"insertmymenu.food",
    			data:{
    				code:code,
    				count:count
    			},
    		 	success:function(result, status, xhr){
    		 		alert("나의 식단에 추가되었습니다.");
    		 	}
    			
    		 });
    		  
    	  });
    	  
    	  $('#addfriend').click(function(){
      		 var code = $('#code').val();
     		 var id = $('#id').val();
     		 $.ajax({
     			url:"insertyourmenu.food",
     			data:{
     				code:code,
     				id:id
     			},
     		 	success:function(result, status, xhr){
     		 		alert( id + "님의 식단에 추가되었습니다.");
     		 	}
     			
     		 });
     		  
     	  });
    	  
    	  $('#id').blur(function() {
				var id = $('#id').val();
				console.log("idid::"+id);
			$.ajax({
				url : 'findf.food',
				data : {
					id : id
				},
				success : function(result, status, xhr) {
					$('#msg').html(result)
					}
				});
			});
      });
      
      
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
							</nav>

						</div>

					</div>
				</div>

			</div>

		</div>


		<div class="site-section mt-5" style="font-family: 'Sunflower', sans-serif;">
			<div class="container">
				<div class="row">
					<div class="col-lg-5">
						<img src="resources/${m.img }" alt="Image" class="img-fluid"> <br>
						<table class="table" style="font-family: 'Sunflower', sans-serif;">
							<tr>
								<th>이름</th>
								<th>${m.food }</th>
							</tr>
							<tr>
								<th>칼로리</th>
								<th>${m.calory }</th>
							</tr>
							<tr>
								<th>알러지 성분</th>
								<th>${m.allergy }</th>
							</tr>
						</table>
						<input type="button"  class="btn btn-danger" onclick="location.href='deletemenu.food?code=${m.code}'" value="삭제하기">
						<br><span style="color:red;">*삭제하기 권한은 관리자에게 있습니다. 추가한 데이터에 문제가 있으면 Q&A게시판을 활용해주세요.</span><br>
					</div>
						<p>
							<button id="add" class="btn btn-outline-primary">추가하기</button>
							<input type="hidden" id="code" value="${m.code }"/>
							<br>
							<input type="text" placeholder="친구 아이디를 입력하세요" id="id" name="id"></input>
							<button id="addfriend" class="btn btn-outline-primary">친구에게 추천하기</button>
							<input type="hidden" id="code" value="${m.code }"/>
							<br>
							<span id="msg" style="color:red"></span><br>

							<span style="color:gray;">*친구에게 추천하기를 누르실 경우, 친구의 식단에 메뉴가 추가됩니다.</span><br>
							<input type="button" class="btn btn-outline-primary" style="font-family: 'Sunflower', sans-serif; margin: auto;" value="레시피보러가기" onclick="showPopup();"></input>
							<br><br>
							
							
						</p>
					</div>
				</div>
			</div>
		</div>



		<%@ include file="footer.jsp"%>
</body>

</html>